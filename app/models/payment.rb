class Payment < ApplicationRecord
    has_many :orders
    has_many :users, through: :orders
    belongs_to :address, class_name: 'Address', foreign_key: 'billing_address'
end
