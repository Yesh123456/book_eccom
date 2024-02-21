class CheckoutsController < ApplicationController

	def create

		puts "Hit Created "
		stripe_secret_key = Rails.application.credentials.stripe[:secret_access_key]
		Stripe.api_key = stripe_secret_key
		cart = params[:cart]
		line_items = cart.map do |items|
			product = Product.find items["id"]
			product_stock = product.stocks.first
			if product_stock.stock_quantity < items["quantity"].to_i
				render json: {error: "Not enough stock for #{product.name}. Only #{product_stock.stock_quantity} left."}, status: 400
				return
			end

			{
				quantity: items["quantity"].to_i,
				price_data: {
					product_data:{
						name: items["name"],
						metadata: {
							product_id: product.id,
							product_stock_id: product_stock.id
						}
					},
					currency: "USD",
					unit_amount: items["price"].to_i
				}
			}
		end

		session = Stripe::Checkout::Session.create(
			mode: "payment",
			line_items: line_items,
			success_url: "https://localhost:3000/sucess",
			cancel_url: "https://localhost:3000/cancel",
			shipping_address_collection: {
				allowed_countries: ['US','IN','CA']
			}

		)

		render json: {url: session.url }
	end

end