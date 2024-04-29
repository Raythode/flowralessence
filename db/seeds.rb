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
    {
        full_name: "Test User",
        email: "test@gmail.com",
        "password_digest": BCrypt::Password.create("test"), 
        role_id: 1
    },
    {
        full_name: "Admin User",
        email: "admin@gmail.com",
        "password_digest": BCrypt::Password.create("admin"),
        role_id: 2
    },
    {
        full_name: "Test User 1",
        email: "test1@gmail.com",
        "password_digest": BCrypt::Password.create("test"), 
        role_id: 1
    },
    {
        full_name: "Admin User 1",
        email: "admin1@gmail.com",
        "password_digest": BCrypt::Password.create("admin"),
        role_id: 2
    },
    {
        full_name: "Test User 2",
        email: "test2@gmail.com",
        "password_digest": BCrypt::Password.create("test"), 
        role_id: 1
    },
    {
        full_name: "Test User 3",
        email: "test3@gmail.com",
        "password_digest": BCrypt::Password.create("test"), 
        role_id: 1
    },
].each do |user|
    User.find_or_create_by!(user)
end

[
# Anemones Blue
{ product_name: 'Anemones Blue 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Boquet/Anemones_Blue_1.jpeg', file_name: 'Boquet_Anemones_Blue_1.jpeg', is_gift: false},
# 'Anemones Pink
{ product_name: 'Anemones Pink 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Boquet/Anemones_Pink_1.jpeg', file_name: 'Boquet_Anemones_Pink_1.jpeg', is_gift: false},
# Anemones Purple
{ product_name: 'Anemones Purple 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 3,  file_path: 'app/assets/images/Boquet/Anemones_Purple_1.jpeg', file_name: 'Boquet_Anemones_Purple_1.jpeg', is_gift: false},
# Anemones Red
{ product_name: 'Anemones Red 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Boquet/Anemones_Red_1.jpeg', file_name: 'Boquet_Anemones_Red_1.jpeg', is_gift: false},
# Anemones White
{ product_name: 'Anemones White 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Boquet/Anemones_White_1.jpeg', file_name: 'Boquet_Anemones_White_1.jpeg', is_gift: false},
# Anemones Yellow
{ product_name: 'Anemones Yellow 1', product_description: 'Boquet', price: 70.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Boquet/Anemones_Yellow_1.jpeg', file_name: 'Boquet_Anemones_Yellow_1.jpeg', is_gift: false},
# Rose Blue
{ product_name: 'Rose Blue 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 3, color_id: 1, file_path: 'app/assets/images/Boquet/Rose_Blue_1.jpeg', file_name: 'Boquet_Rose_Blue_1.jpeg', is_gift: false},
# Rose Pink
{ product_name: 'Rose Pink 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Boquet/Rose_Pink_1.jpeg', file_name: 'Boquet_Rose_Pink_1.jpeg', is_gift: false},
# Rose Purple
{ product_name: 'Rose Purple 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Boquet/Rose_Purple_1.jpeg', file_name: 'Boquet_Rose_Purple_1.jpeg', is_gift: false},
# Rose Red
{ product_name: 'Rose Red 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Boquet/Rose_Red_1.jpeg', file_name: 'Boquet_Rose_Red_1.jpeg', is_gift: false},
# Rose White
{ product_name: 'Rose White 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Boquet/Rose_White_1.jpeg', file_name: 'Boquet_Rose_White_1.jpeg', is_gift: false},
# Rose Yellow
{ product_name: 'Rose Yellow 1', product_description: 'Boquet', price: 50.00, quantity: 10, product_type_id: 2, product_size_id: 2, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Boquet/Rose_Yellow_1.jpeg', file_name: 'Boquet_Rose_Yellow_1.jpeg', is_gift: false},
# Tulip Blue
{ product_name: 'Tulip Blue 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Boquet/Tulip_Blue_1.jpeg', file_name: 'Boquet_Tulip_Blue_1.jpeg', is_gift: false},
# Tulip Pink
{ product_name: 'Tulip Pink 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Boquet/Tulip_Pink_1.jpeg', file_name: 'Boquet_Tulip_Pink_1.jpeg', is_gift: false},
# Tulip Purple
{ product_name: 'Tulip Purple 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Boquet/Tulip_Purple_1.jpeg', file_name: 'Boquet_Tulip_Purple_1.jpeg', is_gift: false},
# Tulip Red
{ product_name: 'Tulip Red 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Boquet/Tulip_Red_1.jpeg', file_name: 'Boquet_Tulip_Red_1.jpeg', is_gift: false},
# Tulip White
{ product_name: 'Tulip White 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Boquet/Tulip_White_1.jpeg', file_name: 'Boquet_Tulip_White_1.jpeg', is_gift: false},
# Tulip Yellow
{ product_name: 'Tulip Yellow 1', product_description: 'Boquet', price: 60.00, quantity: 10, product_type_id: 3, product_size_id: 2, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Boquet/Tulip_Yellow_1.jpeg', file_name: 'Boquet_Tulip_Yellow_1.jpeg', is_gift: false},
# Orchid Blue
{ product_name: 'Orchid Blue 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Boquet/Orchid_Blue_1.jpeg', file_name: 'Boquet_Orchid_Blue_1.jpeg', is_gift: false},
# Orchid Pink
{ product_name: 'Orchid Pink 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Boquet/Orchid_Pink_1.jpeg', file_name: 'Boquet_Orchid_Pink_1.jpeg', is_gift: false},
# Orchid Purple
{ product_name: 'Orchid Purple 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Boquet/Orchid_Purple_1.jpeg', file_name: 'Boquet_Orchid_Purple_1.jpeg', is_gift: false},
# Orchid Red
{ product_name: 'Orchid Red 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 2, color_id: 1,    file_path: 'app/assets/images/Boquet/Orchid_Red_1.jpeg', file_name: 'Boquet_Orchid_Red_1.jpeg', is_gift: false},
# Orchid White
{ product_name: 'Orchid White 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Boquet/Orchid_White_1.jpeg', file_name: 'Boquet_Orchid_White_1.jpeg', is_gift: false},
# Orchid Yellow
{ product_name: 'Orchid Yellow 1', product_description: 'Boquet', price: 80.00, quantity: 10, product_type_id: 4, product_size_id: 2, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Boquet/Orchid_Yellow_1.jpeg', file_name: 'Boquet_Orchid_Yellow_1.jpeg', is_gift: false},
# Hydrangea Blue
{ product_name: 'Hydrangea Blue 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Boquet/Hydrangea_Blue_1.jpeg', file_name: 'Boquet_Hydrangea_Blue_1.jpeg', is_gift: false},
# Hydrangea Pink
{ product_name: 'Hydrangea Pink 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Boquet/Hydrangea_Pink_1.jpeg', file_name: 'Boquet_Hydrangea_Pink_1.jpeg', is_gift: false},
# Hydrangea Purple
{ product_name: 'Hydrangea Purple 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Boquet/Hydrangea_Purple_1.jpeg', file_name: 'Boquet_Hydrangea_Purple_1.jpeg', is_gift: false},
# Hydrangea Red
{ product_name: 'Hydrangea Red 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Boquet/Hydrangea_Red_1.jpeg', file_name: 'Boquet_Hydrangea_Red_1.jpeg', is_gift: false},
# Hydrangea White
{ product_name: 'Hydrangea White 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Boquet/Hydrangea_White_1.jpeg', file_name: 'Boquet_Hydrangea_White_1.jpeg', is_gift: false},
# Hydrangea Yellow
{ product_name: 'Hydrangea Yellow 1', product_description: 'Boquet', price: 90.00, quantity: 10, product_type_id: 5, product_size_id: 2, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Boquet/Hydrangea_Yellow_1.jpeg', file_name: 'Boquet_Hydrangea_Yellow_1.jpeg', is_gift: false},
# Single
# Anemones Blue
{ product_name: 'Anemones Blue 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Single/Anemones_Blue_1.jpeg', file_name: 'Single_Anemones_Blue_1.jpeg', is_gift: false},
# Anemones Pink
{ product_name: 'Anemones Pink 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Single/Anemones_Pink_1.jpeg', file_name: 'Single_Anemones_Pink_1.jpeg', is_gift: false},
# Anemones Purple
{ product_name: 'Anemones Purple 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 1, color_id: 3,   file_path: 'app/assets/images/Single/Anemones_Purple_1.jpeg', file_name: 'Single_Anemones_Purple_1.jpeg', is_gift: false},
# Anemones Red
{ product_name: 'Anemones Red 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Single/Anemones_Red_1.jpeg', file_name: 'Single_Anemones_Red_1.jpeg', is_gift: false},
# Anemones White
{ product_name: 'Anemones White 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Single/Anemones_White_1.jpeg', file_name: 'Single_Anemones_White_1.jpeg', is_gift: false},
# Anemones Yellow
{ product_name: 'Anemones Yellow 1', product_description: 'Single', price: 20.00, quantity: 10, product_type_id: 1, product_size_id: 1, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Single/Anemones_Yellow_1.jpeg', file_name: 'Single_Anemones_Yellow_1.jpeg', is_gift: false},
# Rose Blue
{ product_name: 'Rose Blue 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Single/Rose_Blue_1.jpeg', file_name: 'Single_Rose_Blue_1.jpeg', is_gift: false},
# Rose Pink
{ product_name: 'Rose Pink 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Single/Rose_Pink_1.jpeg', file_name: 'Single_Rose_Pink_1.jpeg', is_gift: false},
# Rose Purple
{ product_name: 'Rose Purple 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Single/Rose_Purple_1.jpeg', file_name: 'Single_Rose_Purple_1.jpeg', is_gift: false},
# Rose Red
{ product_name: 'Rose Red 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Single/Rose_Red_1.jpeg', file_name: 'Single_Rose_Red_1.jpeg', is_gift: false},
# Rose White
{ product_name: 'Rose White 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Single/Rose_White_1.jpeg', file_name: 'Single_Rose_White_1.jpeg', is_gift: false},
# Rose Yellow
{ product_name: 'Rose Yellow 1', product_description: 'Single', price: 30.00, quantity: 10, product_type_id: 2, product_size_id: 1, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Single/Rose_Yellow_1.jpeg', file_name: 'Single_Rose_Yellow_1.jpeg', is_gift: false},
# Tulip Blue
{ product_name: 'Tulip Blue 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Single/Tulip_Blue_1.jpeg', file_name: 'Single_Tulip_Blue_1.jpeg', is_gift: false},
# Tulip Pink
{ product_name: 'Tulip Pink 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Single/Tulip_Pink_1.jpeg', file_name: 'Single_Tulip_Pink_1.jpeg', is_gift: false},
# Tulip Purple
{ product_name: 'Tulip Purple 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Single/Tulip_Purple_1.jpeg', file_name: 'Single_Tulip_Purple_1.jpeg', is_gift: false},
# Tulip Red
{ product_name: 'Tulip Red 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Single/Tulip_Red_1.jpeg', file_name: 'Single_Tulip_Red_1.jpeg', is_gift: false},
# Tulip White
{ product_name: 'Tulip White 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Single/Tulip_White_1.jpeg', file_name: 'Single_Tulip_White_1.jpeg', is_gift: false},
# Tulip Yellow
{ product_name: 'Tulip Yellow 1', product_description: 'Single', price: 40.00, quantity: 10, product_type_id: 3, product_size_id: 1, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Single/Tulip_Yellow_1.jpeg', file_name: 'Single_Tulip_Yellow_1.jpeg', is_gift: false},
# Orchid Blue
{ product_name: 'Orchid Blue 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Single/Orchid_Blue_1.jpeg', file_name: 'Single_Orchid_Blue_1.jpeg', is_gift: false},
# Orchid Pink
{ product_name: 'Orchid Pink 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 2, color_id: 4, file_path: 'app/assets/images/Single/Orchid_Pink_1.jpeg', file_name: 'Single_Orchid_Pink_1.jpeg', is_gift: false},
# Orchid Purple
{ product_name: 'Orchid Purple 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 3, color_id: 3, file_path: 'app/assets/images/Single/Orchid_Purple_1.jpeg', file_name: 'Single_Orchid_Purple_1.jpeg', is_gift: false},
# Orchid Red
{ product_name: 'Orchid Red 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 4, color_id: 1, file_path: 'app/assets/images/Single/Orchid_Red_1.jpeg', file_name: 'Single_Orchid_Red_1.jpeg', is_gift: false},
# Orchid White
{ product_name: 'Orchid White 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 1, color_id: 5, file_path: 'app/assets/images/Single/Orchid_White_1.jpeg', file_name: 'Single_Orchid_White_1.jpeg', is_gift: false},
# Orchid Yellow
{ product_name: 'Orchid Yellow 1', product_description: 'Single', price: 50.00, quantity: 10, product_type_id: 4, product_size_id: 1, occassion_id: 2, color_id: 6, file_path: 'app/assets/images/Single/Orchid_Yellow_1.jpeg', file_name: 'Single_Orchid_Yellow_1.jpeg', is_gift: false},
# Hydrangea Blue
{ product_name: 'Hydrangea Blue 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Single/Hydrangea_Blue_1.jpeg', file_name: 'Single_Hydrangea_Blue_1.jpeg', is_gift: false},
# Hydrangea Pink
{ product_name: 'Hydrangea Pink 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 4, color_id: 4, file_path: 'app/assets/images/Single/Hydrangea_Pink_1.jpeg', file_name: 'Single_Hydrangea_Pink_1.jpeg', is_gift: false},
# Hydrangea Purple
{ product_name: 'Hydrangea Purple 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 1, color_id: 3, file_path: 'app/assets/images/Single/Hydrangea_Purple_1.jpeg', file_name: 'Single_Hydrangea_Purple_1.jpeg', is_gift: false},
# Hydrangea Red
{ product_name: 'Hydrangea Red 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 2, color_id: 1, file_path: 'app/assets/images/Single/Hydrangea_Red_1.jpeg', file_name: 'Single_Hydrangea_Red_1.jpeg', is_gift: false},
# Hydrangea White
{ product_name: 'Hydrangea White 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 3, color_id: 5, file_path: 'app/assets/images/Single/Hydrangea_White_1.jpeg', file_name: 'Single_Hydrangea_White_1.jpeg', is_gift: false},
# Hydrangea Yellow
{ product_name: 'Hydrangea Yellow 1', product_description: 'Single', price: 60.00, quantity: 10, product_type_id: 5, product_size_id: 1, occassion_id: 4, color_id: 6, file_path: 'app/assets/images/Single/Hydrangea_Yellow_1.jpeg', file_name: 'Single_Hydrangea_Yellow_1.jpeg', is_gift: false},
# Gifts
# Anniversary
{ product_name: 'Black Velvet Hat Box', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Gifts/Black_Velvet_Hat_Box.jpeg', file_name: 'Black_Velvet_Hat_Box.jpeg', is_gift: true},
{ product_name: 'Flowers & Chocolate', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Gifts/Flowers_and_Chocolate.jpeg', file_name: 'Flowers_and_Chocolate.jpeg', is_gift: true},
{ product_name: 'Lindt Chocolate', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Gifts/Lindt_chocolates.jpeg', file_name: 'Lindt_chocolates.jpeg', is_gift: true},
{ product_name: 'Roses & Lindt', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Gifts/Roses_and_Lindt.jpeg', file_name: 'Roses_and_Lindt.jpeg', is_gift: true},
{ product_name: 'Roses & Chocolates', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 1, color_id: 2, file_path: 'app/assets/images/Gifts/Roses_and_Chocolate.jpeg', file_name: 'Roses_and_Chocolate.jpeg', is_gift: true},
# Birthday
{ product_name: 'Dark Chocolate Truffles', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 2, file_path: 'app/assets/images/Gifts/Dark_Chocolate_Truffles.jpeg', file_name: 'Dark_Chocolate_Truffles.jpeg', is_gift: true},
{ product_name: 'Chocolate-Card-Truffles', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 2, file_path: 'app/assets/images/Gifts/Chocolate_Card_Truffles.jpeg', file_name: 'Chocolate_Card_Truffles.jpeg', is_gift: true},
{ product_name: 'Godiva Chocolatier', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 2, file_path: 'app/assets/images/Gifts/Godiva_Chocolatier.jpeg', file_name: 'Godiva_Chocolatier.jpeg', is_gift: true},
{ product_name: 'Happy Birthday Cookies', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 2, file_path: 'app/assets/images/Gifts/Happy_Birthday_Cookies.jpeg', file_name: 'Happy_Birthday_Cookies.jpeg', is_gift: true},
{ product_name: 'Hazel and Creme Cookies', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 2, color_id: 2, file_path: 'app/assets/images/Gifts/Hazel_and_Creme_Cookies.jpeg', file_name: 'Hazel_and_Creme_Cookies.jpeg', is_gift: true},
# Thanksgiving
{ product_name: 'Chocilate and Wine', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Gifts/Chocilate_and_Wine.jpeg', file_name: 'Chocilate_and_Wine.jpeg', is_gift: true},
{ product_name: 'Chocilate bars', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Gifts/Chocilate_Bars.jpeg', file_name: 'Chocilate_Bars.jpeg', is_gift: true},
{ product_name: 'Chocolate Mug Cake Kit', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Gifts/Chocolate_Mug_Cake_Kit.jpeg', file_name: 'Chocolate_Mug_Cake_Kit.jpeg', is_gift: true},
{ product_name: 'Gift Hamper', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Gifts/Gift_Hamper.jpeg', file_name: 'Gift_Hamper.jpeg', is_gift: true},
{ product_name: 'Roses with Ferrerocher', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 3, color_id: 2, file_path: 'app/assets/images/Gifts/Roses_with_Ferrerocher.jpeg', file_name: 'Roses_with_Ferrerocher.jpeg', is_gift: true},
# Valentine's Day
{ product_name: 'Chocolates Hamper', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 2, file_path: 'app/assets/images/Gifts/Chocolates_Hamper.jpeg', file_name: 'Chocolates_Hamper.jpeg', is_gift: true},
{ product_name: 'Ferrero Rocher Chocolate Gift Box', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 2, file_path: 'app/assets/images/Gifts/Ferrero_Rocher_Chocolate_Gift_Box.jpeg', file_name: 'Ferrero_Rocher_Chocolate_Gift_Box.jpeg', is_gift: true},
{ product_name: 'Heart Shaped Present', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 2, file_path: 'app/assets/images/Gifts/Heart_Shaped_Present.jpeg', file_name: 'Heart_Shaped_Present.jpeg', is_gift: true},
{ product_name: 'Russell Stover', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 2, file_path: 'app/assets/images/Gifts/Russell_Stover.jpeg', file_name: 'Russell_Stover.jpeg', is_gift: true},
{ product_name: 'Valentines Cookies', product_description: 'Gift', price: 80.00, quantity: 10, product_type_id: 1, product_size_id: 2, occassion_id: 4, color_id: 2, file_path: 'app/assets/images/Gifts/Valentines_Cookies.jpeg', file_name: 'Valentines_Cookies.jpeg', is_gift: true},
].each do |item|
    new_product = Product.find_or_create_by!(product_name: item[:product_name], product_description: item[:product_description], price: item[:price], quantity: item[:quantity], product_type_id: item[:product_type_id], product_size_id: item[:product_size_id], occassion_id: item[:occassion_id], color_id: item[:color_id], is_gift: item[:is_gift])

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
    {flower_description_1: "Anemones are gorgeous wildflowers that typically grow in many European countries, North America, and Japan. They belong to the perennial plant family and are often confused with the sea anemones (sea creatures). These pretty flowers come in shades of red, yellow, purple, white, and blue. These vibrant flowers are perfect for weddings, baby showers, or other events due to the many different color options. We guarantee your flowers will arrive fresh and open beautifully to fill your event or home with color and life.", flower_description_2: "<h3><span>How to Plant Anemones&nbsp;</span></h3> <p><strong>When to Plant: &nbsp;</strong>The corms of&nbsp;<em>anemone blanda</em>&nbsp;should be planted in fall, at the same time as tulips and daffodils. In zones 7-10, DeCaen and St. Brigid anemones are typically planted in the fall for flowers the following spring. In cooler zones, De Caen and St. Brigid anemones should be planted in early spring for flowers in summer. To learn more, read <a href='https://www.longfield-gardens.com/article/how-to-grow-anemones-in-cold-climates' target='_blank'>How to Grow Anemones in Cold Climates</a>. Herbaceous anemones may be planted in spring, summer or fall.</p> <p><span><strong>Depth and Spacing:&nbsp;</strong>Plant&nbsp;<em>anemone blanda</em>&nbsp;2&rdquo; deep and 3&rdquo; apart on center. Plant DeCaen and St. Brigid anemones 3&rdquo; deep and 3 to 4&rdquo; apart on center. Plant herbaceous anemones so they are at the same depth as they were in the pot.</span></p> <p><span><strong>Planting Tips:&nbsp;</strong>Anemone corms are hard and dry. Soaking them in lukewarm water for 4 hours before planting (no longer!) will make it easier for the sprouts to emerge. The corms of anemone coronaria may be sprouted before planting. To do this, fill a planting tray with 1' of damp growing mix. Scatter the corms over the surface and cover with another inch of damp growing mix. Store tray in a dark place for 10 days at 50-60&deg;F. When you white roots, gently lift and replant the corms. When planting anemone corms, don&rsquo;t worry about which end is up. They may be positioned in any direction and the sprouts will find their way to the sun.</span></p>"},
    {flower_description_1: "The rose is not just the most loved flower in the world, it's also the flower that is regarded as the best representation of love. Whether it's a bouquet of long stems for Valentine's day or a bundle of romantic garden roses for your walk down the aisle, there's a fresh and modern way to use this classic flower at any time of the year and we have them all. Bloomingmore takes pride in offering a wide variety of roses in dozens of colors and shades from responsible growers in Ecuador. We guarantee your flowers will arrive fresh and open beautifully to fill your event or home with fragrance and life. Explore our classic natural roses for traditional arrangements and our glitter or tinted roses for one-of-a-kind looks.", flower_description_2: "<p>It's possible to grow roses in pots, meaning you can grow roses in even the smallest gardens. While all but rambling roses can be grown in pots, shorter growing bush varieties, or ‘patio roses', are ideal. They’ll do best in large, deep containers – an absolute minimum of 50cm in diameter and the same in depth – to keep their roots cool and moist during summer.</p><p>In hot, dry weather, soak the compost every two to three days, and feed regularly.</p><ul><li><a href=\"/how-to/grow-plants/guide-to-growing-roses-in-pots/\">Guide to growing roses in pots</a></li><li><a href=\"/plants/carol-kleins-favourite-roses-for-pots/\">Carol Klein's favourite roses for growing in pots</a></li></ul>"},
    {flower_description_1: "Long live the tulip! These beautiful jewels brighten our days in spring. We truly look forward to seeing those blue-green leaves start to emerge as the earth awakens from its winter sleep! Here are our tips on how to grow and care for tulips in your garden. Tulips typically begin emerging from the ground in late winter or early spring. If unseasonably mild weather causes premature growth in winter, the danger is not as great as it may seem. Tulips (and daffodils, too) are quite cold-tolerant. If freezing winter temperatures return, it may delay growth, however. Snow is actually helpful in this case, as it can insulate the foliage from extreme cold.", flower_description_2: "<h5>How to Grow Tulips: </h5> <p>Tulips require at least 6 weeks of cold weather to flower properly, so if you live where winters don’t get down to freezing temperatures, you’ll need to order prechilled bulbs.</p> <p>In the garden, tulips make the most impact when planted en masse. For a real show, I recommend ditching the bulb planter, instead planting clumps of at least 10 bulbs. Simply dig out a generous circle of soil, about 6 in (15 cm) deep, mix in a little organic bulb fertilizer and compost, and then plant your bulbs roughly three times as deep as they are tall.</p> <p>Tulips can be planted quite close, less than 1 in (2.5 cm) from each other, similar to eggs in a carton. Once your bulbs are securely in place, water deeply and refill the hole with the soil you removed earlier. Add 1 to 2 in (2.5 to 5 cm) of compost on top to act as a mulch. Be sure to insert some type of stake so you remember where you planted them.</p> <p>Bulbs can also be planted in pots. When choosing a container, remember that bigger is always better because larger pots don’t dry out as quickly and can hold more bulbs. Tulips can be planted quite densely in pots, similar to eggs in a carton. To grow tulips solely for cutting, plant them in a wide trench. For the trench method, dig out a trench that is 3 ft (1 m) wide and 6 in (15 cm) deep, piling all the dirt to one side. Sprinkle a light dusting of organic bulb fertilizer into the trench and rake it in, smoothing the bottom of the trench at the same time. Place the bulbs, pointed side up, close but not touching. Label each individual variety as you go.</p> <p>Once the bulbs are in, water them deeply, letting the trench fill at least half full with water, which encourages vigorous root growth, in turn producing even larger flowers. Backfill the trench, mulch the top with 1 to 2 in (2.5 to 5 cm) of compost, and lay down irrigation lines, watering deeply a few times throughout the winter. It’s really quite simple! Tulips can also be grown in bulb crates and forced into flower during the winter months in a heated greenhouse. However, this technique requires prechilled bulbs and quite a bit of precision. To be honest, we’re still trying to master the art ourselves. Once I get it figured out, I’ll be sure to share our secrets.</p>"},
    {flower_description_1: "Orchids are wonderful and addicting.  Once you have one, you will find that you want another, and another, and another……  They are beautiful, and some are ones that only a mother would love.  Some orchids smell so sweet and others like rotten meat.  Learning how the orchids have evolved to attract their pollinators is one of the most fascinating parts of the study of orchids.", flower_description_2: "<h5>Optimal Growing Conditions for Orchid Plants: </h5> <p>These plants thrive in strong light, but not direct late-afternoon sunlight (although dendrobiums can handle more sun). They also need high humidity and airflow around the roots. They need regular periods of drying alternated with heavy watering. Orchids do best in temperatures above 50 degrees but below 85°F.</p> <p>The closer you can come to creating these conditions, the more success and better blooms you will have.</p> <p>Tulips can be planted quite close, less than 1 in (2.5 cm) from each other, similar to eggs in a carton. Once your bulbs are securely in place, water deeply and refill the hole with the soil you removed earlier. Add 1 to 2 in (2.5 to 5 cm) of compost on top to act as a mulch. Be sure to insert some type of stake so you remember where you planted them.</p> <p>Most store-bought orchids come packaged in cheap plastic pots with the roots packed in soaked moss. Obviously, this violates two of the main rules of successful growth. There is no air flow around the roots, and the roots are never given a chance to completely dry out. Thus, the plant cannot breathe and root rot is inevitable.</p> <p>Orchid roots are highly specialized organs designed to soak up water very quickly and breathe. They do not extract nutrients from the soil.​​</p>"},
    {flower_description_1: "Unrivaled in the shrub world for their beautiful flowers, these elegant perennial plants are easy to cultivate, tolerate almost any type of soil, and produce abundant blooms. Colors beguile with clear blue, vibrant pink, frosty white, lavender, and rose blossoms—sometimes all blooming on the same plant! Hydrangeas are excellent for various garden sites, from group plantings to shrub borders to containers. Varieties abound (it seems breeders present us with more options every year!), and gardeners’ expectations of bloom size and color are boundless. Pay attention to the species defined below to know how your hydrangea will grow, as some require different care. When you know what to expect, delights will be magnified.", flower_description_2: "<h3>How to Plant&nbsp;Hydrangeas</h3><ul><li>Space hydrangeas anywhere from 3 to 10 feet apart, depending on the type. Always space plants based on their expected size at&nbsp;maturity!</li><li>Gently remove the hydrangea from its container and inspect the root ball, snipping off any dead or rotting parts and teasing free the roots if the plant is especially&nbsp;root-bound.</li><li>Dig a hole as deep as the root ball and 2 to 3 times as wide. The base of the plant (where the stem meets the soil) should be level with the top of the planting&nbsp;hole.</li><li>Set the plant in the hole and half-fill it with soil. Water generously. After the water is absorbed, fill the rest of the hole with soil and water&nbsp;again.</li></ul>"},
    ].each do |about_flower|
    AboutFlower.find_or_create_by!(flower_description_1: about_flower[:flower_description_1], flower_description_2: about_flower[:flower_description_2])
end

[
    {name: "Anemones", about_flower_id: 1},
    {name: "Rose", about_flower_id: 2},
    {name: "Tulip", about_flower_id: 3},
    {name: "Orchid", about_flower_id: 4},
    {name: "Hydrangea", about_flower_id: 5},
].each do |flower|
    ProductType.find_or_create_by!(name: flower[:name], about_flower_id: flower[:about_flower_id])
end

[
    {
        name_on_card: "John Doe",
        card_number: "1234567890123456",
        expiration_date: "12/2022",
        cvv: "123",
        billing_address: 1,
    }
].each do |payment|
    Payment.find_or_create_by!(name_on_card: payment[:name_on_card], card_number: payment[:card_number], expiration_date: payment[:expiration_date], cvv: payment[:cvv], billing_address: payment[:billing_address])
end

[
    {
        address_line_1: "123 Main St",
        address_line_2: "Apt 1",
        city: "New York",
        state: "NY",
        zip_code: "10001",
    }
].each do |address|
    Address.find_or_create_by!(address_line_1: address[:address_line_1], address_line_2: address[:address_line_2], city: address[:city], state: address[:state], zip_code: address[:zip_code])
end

[
    {
        customer_id: 1,
        order_number: "123456",
        product_id: 1,
        product_sale_price: 20.00,
        product_quantity: 1,
        order_tax: 1.00,
        order_total: 21.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 1,
        created_at: "2024-05-27 00:00:00",
    },
    {
        customer_id: 1,
        order_number: "57356345",
        product_id: 4,
        product_sale_price: 80.00,
        product_quantity: 2,
        order_tax: 1.00,
        order_total: 162.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 2,
        created_at: "2024-05-28 00:00:00",
    },
    {
        customer_id: 3,
        order_number: "25235234",
        product_id: 5,
        product_sale_price: 100.00,
        product_quantity: 1,
        order_tax: 1.00,
        order_total: 101.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 3,
    },
    {
        customer_id: 3,
        order_number: "123484674563456",
        product_id: 6,
        product_sale_price: 20.00,
        product_quantity: 1,
        order_tax: 1.00,
        order_total: 21.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 1,
    },
    {
        customer_id: 5,
        order_number: "127647563456",
        product_id: 1,
        product_sale_price: 20.00,
        product_quantity: 1,
        order_tax: 1.00,
        order_total: 21.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 1,
    },
    {
        customer_id: 6,
        order_number: "1236354456",
        product_id: 1,
        product_sale_price: 20.00,
        product_quantity: 1,
        order_tax: 1.00,
        order_total: 21.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 1,
    },
    {
        customer_id: 6,
        order_number: "12363544568",
        product_id: 1,
        product_sale_price: 20.00,
        product_quantity: 1,
        order_tax: 1.00,
        order_total: 21.00,
        address_id: 1,
        payment_info_id: 1,
        status_id: 4,
    }
].each do |order|
    Order.find_or_create_by!(customer_id: order[:customer_id], order_number: order[:order_number], product_id: order[:product_id], product_sale_price: order[:product_sale_price], product_quantity: order[:product_quantity], order_tax: order[:order_tax], order_total: order[:order_total], address_id: order[:address_id], payment_info_id: order[:payment_info_id], status_id: order[:status_id])
end

