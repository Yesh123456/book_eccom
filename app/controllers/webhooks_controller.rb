class WebhooksController < ApplicationController

	skip_forgery_protection

	def stripe
		stripe_secret_key = Rails.application.credentials.stripe[:secret_access_key]
		Stripe.api_key = stripe_secret_key
		payload = request.body.read
		sig_header = request.env['HTTP_STRIPE_SIGNATURE']
		endpoint_secret = Rails.application.credentials.stripe[:webhook_secret_access_key]
		event = nil

		begin
			event = Stripe::Webhook.construct_event(payload,sig_header,endpoint_secret)
		rescue JSON::ParserError => e
			status 400
			return
		rescue Stripe::SignatureVerifcationError => e
			puts "Invalid stripe signature, verification failed"
			status 400
			return
		end

		case event.type
		when  'checkout.session.completed'
			session = event.data.object
			shipping_details = shipping["address"]
			if shipping_details.present?
				address = "#{shipping_details.line1},#{ shipping_details.city }, #{ shipping_details.state }, #{ shipping_details.postal_code }, #{ shipping_details.country}"
			else
				address = ""
			end
			customer_email = session['customer_details']['email']
			total_amount = session['amount_total']
			order = Order.create!(customer_email: customer_email, total_amount: total_amount, address: address, full_filled: false)
			full_session = Stripe::Checkout::Session.retrieve({
				id: session.id,
				expand: ['line_items']
			})
			line_items = full_session.line_items
			line_items.each do |item|
				product = Stripe::Product.retrieve(item["price"]["product"])
				product_id = product["metadata"]["product_id"].to_i
				OrderProduct.create!(order: order, product_id: product_id, quantity: item['quantity'])
				Stock.find(product["metadata"]["product_stock_id"]).decrement!(:stock_quantity, item["quantity"])  
			end
		else
			puts "Unhandled event type: #{event.type}"
		end
				
	end
end