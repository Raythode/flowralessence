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
{ product_name: 'Item 1', product_description: 'This is item 1', price: 10.00, quantity: 0, product_type_id: 1, product_size_id: 1, occassion_id: 1, color_id: 1},
{ product_name: 'Item 2', product_description: 'This is item 2',price: 20.00, quantity: 1, product_type_id: 2, product_size_id: 2, occassion_id: 2, color_id: 2},
{  product_name: 'Item 3', product_description: 'This is item 3',price: 30.00, quantity: 3, product_type_id: 3, product_size_id: 1, occassion_id: 3, color_id: 3},
{  product_name: 'Item 4', product_description: 'This is item 4',price: 40.00, quantity: 4, product_type_id: 4, product_size_id: 2, occassion_id: 4, color_id: 4},
{  product_name: 'Item 5', product_description: 'This is item 5',price: 50.00, quantity: 5, product_type_id: 5, product_size_id: 1, occassion_id: 5, color_id: 5},
{  product_name: 'Item 6', product_description: 'This is item 6',price: 60.00, quantity: 6, product_type_id: 6, product_size_id: 2, occassion_id: 6, color_id: 6},
].each do |item|
    Product.find_or_create_by!(item)
end

['Pending', 'Processing', 'Shipped', 'Delivered'].each do |status|
    Status.find_or_create_by!(status: status)
end

[
    { occassion_name: "Birthday"},
    { occassion_name: "Anniversary"},
    { occassion_name: "Wedding"},
    { occassion_name: "Graduation"},
    { occassion_name: "Valentine's Day"},
    { occassion_name: "Mother's Day"},
    { occassion_name: "Father's Day"},
    { occassion_name: "Christmas"},
    { occassion_name: "New Year"},
    { occassion_name: "Easter"},
    { occassion_name: "Halloween"},
    { occassion_name: "Thanksgiving"},
    { occassion_name: "Independence Day"},
    { occassion_name: "Labor Day"}
].each do |occassion|
    Occassion.find_or_create_by!(occassion_name: occassion[:occassion_name])
end

[
    {color: "Red"},
    {color: "Blue"},
    {color: "Green"},
    {color: "Yellow"},
    {color: "Orange"},
    {color: "Purple"},
    {color: "Pink"},
    {color: "Black"},
    {color: "White"},
    {color: "Purple"}
].each do |color|
    Color.find_or_create_by!(color: color[:color])
end

[
    {size: "Single"},
    {size: "Boquet"}
].each do |size|
    ProductSize.find_or_create_by!(size_name: size[:size])
end

[
    {name: "Rose"},
    {name: "Lily"},
    {name: "Tulip"},
    {name: "Daisy"},
    {name: "Orchid"},
    {name: "Sunflower"},
    {name: "Carnation"},
    {name: "Daffodil"},
    {name: "Peony"},
    {name: "Hydrangea"},
    {name: "Gardenia"},
    {name: "Iris"},
    {name: "Lavender"},
    {name: "Chrysanthemum"},
    {name: "Dahlia"},
    {name: "Freesia"},
    {name: "Gladiolus"},
    {name: "Jasmine"},
    {name: "Lilac"},
    {name: "Magnolia"},
    {name: "Marigold"},
    {name: "Pansy"},
    {name: "Poppy"},
    {name: "Zinnia"}
].each do |flower|
    ProductType.find_or_create_by!(name: flower[:name])
end