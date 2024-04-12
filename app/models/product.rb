class Product < ApplicationRecord
    has_many :carts
    has_many :customers, through: :carts
    has_many :orders
    belongs_to :occassion, foreign_key: "occassion_id", optional: true
    belongs_to :color, foreign_key: "color_id", optional: true
    belongs_to :product_size, foreign_key: "product_size_id", optional: true
    belongs_to :product_type, foreign_key: "product_type_id", optional: true
end
