# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Admin.create!([{
  email: "sys@superadmin.com",
  password: "123456",
}])
p "Created #{Admin.count} Admin User"

Category.create!([{
	name: "Commic",description: "This is commic book"},
	{ name: "Manga", description: "This is manga book"}])

p "Created #{Category.count} Category"

Product.create!([{
  name: "Naruto Shippudin",
  description: "This is Naruto Shippudin Arc",
  category_id: 2,
  active: true,
  publisher: 'Kishima Mota'
  date_of_publication: '22/10/2012',
  edition: '2',
  isbn_number: 90213234442,
  author: "Kinzoyo Kiuosu",
  price: 4999,
  weight: "1.5",
  binding_type: "harbound"
}])
p "Created #{Product.count} Product"

Order.create!([{
	customer_email: "king@gmail.com",
	fullfilled: true,
	total_amount: 4999,
	address: "Hilton Street, NeyYork City, USA",
}])
p "Created #{Order.count} Order"

OrderProduct.create!([{ product_id: 1, order_id: 1, quantity: 1 }])
p "Created #{OrderProduct.count} Order Product"

Stock.create!([{ product_id: 1, stock_quantity: 10 }])
p "Created #{Stock.count} Stock"

