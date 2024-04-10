class Cart < ApplicationRecord
    belongs_to :customer, class_name: "User"
    belongs_to :product, class_name: "Product"

    validates :product_quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

    def self.upsert(attributes)
        cart = Cart.find_by(customer_id: attributes[:customer_id], product_id: attributes[:product_id])

        if cart
            cart.update(product_quantity: cart.product_quantity + attributes[:product_quantity])
        else
            cart = Cart.create(attributes)
        end

        cart
    end

    def total_price
        product.price * product_quantity
    end
end
