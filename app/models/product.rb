class Product < ApplicationRecord
    has_many :carts
    has_many :customers, through: :carts
    has_many :orders
end
