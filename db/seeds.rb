# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


['Customer', 'Admin'].each do |role|
    UserRole.find_or_create_by!(role: role)
end

[
{ product_name: 'Item 1', product_description: 'This is item 1', price: 10.00, quantity: 0 },
{ product_name: 'Item 2', product_description: 'This is item 2',price: 20.00, quantity: 1 },
{  product_name: 'Item 3', product_description: 'This is item 3',price: 30.00, quantity: 3 },
{  product_name: 'Item 4', product_description: 'This is item 4',price: 40.00, quantity: 4 },
{  product_name: 'Item 5', product_description: 'This is item 5',price: 50.00, quantity: 5 },
{  product_name: 'Item 6', product_description: 'This is item 6',price: 60.00, quantity: 6 },
].each do |item|
    Product.create!(product_name: item[:product_name], product_description: item[:product_description], price: item[:price], quantity: item[:quantity])
end