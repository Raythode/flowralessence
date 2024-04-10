class User < ApplicationRecord
    has_secure_password

    has_many :carts
    has_many :products, through: :carts

    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Must be a valid email address" }
    validates :full_name, presence: true
end
