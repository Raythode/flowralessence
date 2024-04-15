# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(full_name: "Test User", email: "test@gmail.com", "password_digest": BCrypt::Password.create("test"), role_id: 1)

['Customer', 'Admin'].each do |role|
    UserRole.find_or_create_by!(role: role)
end

[
# Anemones Blue
{ product_name: 'Anemones Blue 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Boquet/Anemones_Blue_1.jpeg', file_name: 'Boquet_Anemones_Blue_1.jpeg'},
# 'Anemones Pink
{ product_name: 'Anemones Pink 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Boquet/Anemones_Pink_1.jpeg', file_name: 'Boquet_Anemones_Pink_1.jpeg'},
# Anemones Purple
{ product_name: 'Anemones Purple 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 3,  file_path: 'app/assets/images/Boquet/Anemones_Purple_1.jpeg', file_name: 'Boquet_Anemones_Purple_1.jpeg'},
# Anemones Red
{ product_name: 'Anemones Red 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Boquet/Anemones_Red_1.jpeg', file_name: 'Boquet_Anemones_Red_1.jpeg'},
# Anemones White
{ product_name: 'Anemones White 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Boquet/Anemones_White_1.jpeg', file_name: 'Boquet_Anemones_White_1.jpeg'},
# Anemones Yellow
{ product_name: 'Anemones Yellow 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Boquet/Anemones_Yellow_1.jpeg', file_name: 'Boquet_Anemones_Yellow_1.jpeg'},
# Rose Blue
{ product_name: 'Rose Blue 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 3, color_id: 1, file_path: 'app/assets/images/Boquet/Rose_Blue_1.jpeg', file_name: 'Boquet_Rose_Blue_1.jpeg'},
# Rose Pink
{ product_name: 'Rose Pink 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Boquet/Rose_Pink_1.jpeg', file_name: 'Boquet_Rose_Pink_1.jpeg'},
# Rose Purple
{ product_name: 'Rose Purple 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Boquet/Rose_Purple_1.jpeg', file_name: 'Boquet_Rose_Purple_1.jpeg'},
# Rose Red
{ product_name: 'Rose Red 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Boquet/Rose_Red_1.jpeg', file_name: 'Boquet_Rose_Red_1.jpeg'},
# Rose White
{ product_name: 'Rose White 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Boquet/Rose_White_1.jpeg', file_name: 'Boquet_Rose_White_1.jpeg'},
# Rose Yellow
{ product_name: 'Rose Yellow 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Boquet/Rose_Yellow_1.jpeg', file_name: 'Boquet_Rose_Yellow_1.jpeg'},
# Tulip Blue
{ product_name: 'Tulip Blue 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Boquet/Tulip_Blue_1.jpeg', file_name: 'Boquet_Tulip_Blue_1.jpeg'},
# Tulip Pink
{ product_name: 'Tulip Pink 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Boquet/Tulip_Pink_1.jpeg', file_name: 'Boquet_Tulip_Pink_1.jpeg'},
# Tulip Purple
{ product_name: 'Tulip Purple 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Boquet/Tulip_Purple_1.jpeg', file_name: 'Boquet_Tulip_Purple_1.jpeg'},
# Tulip Red
{ product_name: 'Tulip Red 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Boquet/Tulip_Red_1.jpeg', file_name: 'Boquet_Tulip_Red_1.jpeg'},
# Tulip White
{ product_name: 'Tulip White 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Boquet/Tulip_White_1.jpeg', file_name: 'Boquet_Tulip_White_1.jpeg'},
# Tulip Yellow
{ product_name: 'Tulip Yellow 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Boquet/Tulip_Yellow_1.jpeg', file_name: 'Boquet_Tulip_Yellow_1.jpeg'},
# Orchid Blue
{ product_name: 'Orchid Blue 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Boquet/Orchid_Blue_1.jpeg', file_name: 'Boquet_Orchid_Blue_1.jpeg'},
# Orchid Pink
{ product_name: 'Orchid Pink 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Boquet/Orchid_Pink_1.jpeg', file_name: 'Boquet_Orchid_Pink_1.jpeg'},
# Orchid Purple
{ product_name: 'Orchid Purple 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Boquet/Orchid_Purple_1.jpeg', file_name: 'Boquet_Orchid_Purple_1.jpeg'},
# Orchid Red
{ product_name: 'Orchid Red 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 2, color_id: 1,    file_path: 'app/assets/images/Boquet/Orchid_Red_1.jpeg', file_name: 'Boquet_Orchid_Red_1.jpeg'},
# Orchid White
{ product_name: 'Orchid White 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Boquet/Orchid_White_1.jpeg', file_name: 'Boquet_Orchid_White_1.jpeg'},
# Orchid Yellow
{ product_name: 'Orchid Yellow 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Boquet/Orchid_Yellow_1.jpeg', file_name: 'Boquet_Orchid_Yellow_1.jpeg'},
# Hydrangea Blue
{ product_name: 'Hydrangea Blue 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Boquet/Hydrangea_Blue_1.jpeg', file_name: 'Boquet_Hydrangea_Blue_1.jpeg'},
# Hydrangea Pink
{ product_name: 'Hydrangea Pink 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Boquet/Hydrangea_Pink_1.jpeg', file_name: 'Boquet_Hydrangea_Pink_1.jpeg'},
# Hydrangea Purple
{ product_name: 'Hydrangea Purple 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Boquet/Hydrangea_Purple_1.jpeg', file_name: 'Boquet_Hydrangea_Purple_1.jpeg'},
# Hydrangea Red
{ product_name: 'Hydrangea Red 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Boquet/Hydrangea_Red_1.jpeg', file_name: 'Boquet_Hydrangea_Red_1.jpeg'},
# Hydrangea White
{ product_name: 'Hydrangea White 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Boquet/Hydrangea_White_1.jpeg', file_name: 'Boquet_Hydrangea_White_1.jpeg'},
# Hydrangea Yellow
{ product_name: 'Hydrangea Yellow 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Boquet/Hydrangea_Yellow_1.jpeg', file_name: 'Boquet_Hydrangea_Yellow_1.jpeg'},
# Single
# Anemones Blue
{ product_name: 'Anemones Blue 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Single/Anemones_Blue_1.jpeg', file_name: 'Single_Anemones_Blue_1.jpeg'},
# Anemones Pink
{ product_name: 'Anemones Pink 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Single/Anemones_Pink_1.jpeg', file_name: 'Single_Anemones_Pink_1.jpeg'},
# Anemones Purple
{ product_name: 'Anemones Purple 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 1, color_id: 3,   file_path: 'app/assets/images/Single/Anemones_Purple_1.jpeg', file_name: 'Single_Anemones_Purple_1.jpeg'},
# Anemones Red
{ product_name: 'Anemones Red 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Single/Anemones_Red_1.jpeg', file_name: 'Single_Anemones_Red_1.jpeg'},
# Anemones White
{ product_name: 'Anemones White 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Single/Anemones_White_1.jpeg', file_name: 'Single_Anemones_White_1.jpeg'},
# Anemones Yellow
{ product_name: 'Anemones Yellow 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Single/Anemones_Yellow_1.jpeg', file_name: 'Single_Anemones_Yellow_1.jpeg'},
# Rose Blue
{ product_name: 'Rose Blue 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Single/Rose_Blue_1.jpeg', file_name: 'Single_Rose_Blue_1.jpeg'},
# Rose Pink
{ product_name: 'Rose Pink 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Single/Rose_Pink_1.jpeg', file_name: 'Single_Rose_Pink_1.jpeg'},
# Rose Purple
{ product_name: 'Rose Purple 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Single/Rose_Purple_1.jpeg', file_name: 'Single_Rose_Purple_1.jpeg'},
# Rose Red
{ product_name: 'Rose Red 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Single/Rose_Red_1.jpeg', file_name: 'Single_Rose_Red_1.jpeg'},
# Rose White
{ product_name: 'Rose White 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Single/Rose_White_1.jpeg', file_name: 'Single_Rose_White_1.jpeg'},
# Rose Yellow
{ product_name: 'Rose Yellow 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Single/Rose_Yellow_1.jpeg', file_name: 'Single_Rose_Yellow_1.jpeg'},
# Tulip Blue
{ product_name: 'Tulip Blue 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Single/Tulip_Blue_1.jpeg', file_name: 'Single_Tulip_Blue_1.jpeg'},
# Tulip Pink
{ product_name: 'Tulip Pink 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Single/Tulip_Pink_1.jpeg', file_name: 'Single_Tulip_Pink_1.jpeg'},
# Tulip Purple
{ product_name: 'Tulip Purple 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Single/Tulip_Purple_1.jpeg', file_name: 'Single_Tulip_Purple_1.jpeg'},
# Tulip Red
{ product_name: 'Tulip Red 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Single/Tulip_Red_1.jpeg', file_name: 'Single_Tulip_Red_1.jpeg'},
# Tulip White
{ product_name: 'Tulip White 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Single/Tulip_White_1.jpeg', file_name: 'Single_Tulip_White_1.jpeg'},
# Tulip Yellow
{ product_name: 'Tulip Yellow 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Single/Tulip_Yellow_1.jpeg', file_name: 'Single_Tulip_Yellow_1.jpeg'},
# Orchid Blue
{ product_name: 'Orchid Blue 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Single/Orchid_Blue_1.jpeg', file_name: 'Single_Orchid_Blue_1.jpeg'},
# Orchid Pink
{ product_name: 'Orchid Pink 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Single/Orchid_Pink_1.jpeg', file_name: 'Single_Orchid_Pink_1.jpeg'},
# Orchid Purple
{ product_name: 'Orchid Purple 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Single/Orchid_Purple_1.jpeg', file_name: 'Single_Orchid_Purple_1.jpeg'},
# Orchid Red
{ product_name: 'Orchid Red 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Single/Orchid_Red_1.jpeg', file_name: 'Single_Orchid_Red_1.jpeg'},
# Orchid White
{ product_name: 'Orchid White 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Single/Orchid_White_1.jpeg', file_name: 'Single_Orchid_White_1.jpeg'},
# Orchid Yellow
{ product_name: 'Orchid Yellow 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Single/Orchid_Yellow_1.jpeg', file_name: 'Single_Orchid_Yellow_1.jpeg'},
# Hydrangea Blue
{ product_name: 'Hydrangea Blue 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Single/Hydrangea_Blue_1.jpeg', file_name: 'Single_Hydrangea_Blue_1.jpeg'},
# Hydrangea Pink
{ product_name: 'Hydrangea Pink 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Single/Hydrangea_Pink_1.jpeg', file_name: 'Single_Hydrangea_Pink_1.jpeg'},
# Hydrangea Purple
{ product_name: 'Hydrangea Purple 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Single/Hydrangea_Purple_1.jpeg', file_name: 'Single_Hydrangea_Purple_1.jpeg'},
# Hydrangea Red
{ product_name: 'Hydrangea Red 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Single/Hydrangea_Red_1.jpeg', file_name: 'Single_Hydrangea_Red_1.jpeg'},
# Hydrangea White
{ product_name: 'Hydrangea White 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Single/Hydrangea_White_1.jpeg', file_name: 'Single_Hydrangea_White_1.jpeg'},
# Hydrangea Yellow
{ product_name: 'Hydrangea Yellow 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Single/Hydrangea_Yellow_1.jpeg', file_name: 'Single_Hydrangea_Yellow_1.jpeg'},
].each do |item|
    new_product = Product.find_or_create_by!(product_name: item[:product_name], product_description: item[:product_description], price: item[:price], quantity: item[:quantity], product_type_id: item[:product_type_id], product_size_id: item[:product_size_id], occassion_id: item[:occassion_id], color_id: item[:color_id])

    new_product.product_image.attach(io: File.open(Rails.root.join("#{item[:file_path]}")), filename: "#{item[:file_name]}")
end

['Pending', 'Processing', 'Shipped', 'Delivered'].each do |status|
    Status.find_or_create_by!(status: status)
end

[
    { occassion_name: "Anniversary"},
    { occassion_name: "Birthday"},
    { occassion_name: "Thanksgiving"},
    { occassion_name: "Valentine's Day"},
].each do |occassion|
    Occassion.find_or_create_by!(occassion_name: occassion[:occassion_name])
end

[
    {color: "Red"},
    {color: "Blue"},
    {color: "Purple"},
    {color: "Pink"},
    {color: "White"},
    {color: "Yellow"},
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
    {name: "Anemones"},
    {name: "Rose"},
    {name: "Tulip"},
    {name: "Orchid"},
    {name: "Hydrangea"},
].each do |flower|
    ProductType.find_or_create_by!(name: flower[:name])
end