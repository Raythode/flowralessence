class Order < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'customer_id'
    belongs_to :product, class_name: 'Product', foreign_key: 'product_id'
    belongs_to :address, class_name: 'Address', foreign_key: 'address_id'
    belongs_to :payment, class_name: 'Payment', foreign_key: 'payment_info_id'
    belongs_to :status, class_name: 'Status', foreign_key: 'status_id'
end
