class User < ApplicationRecord
    has_secure_password
  
    has_many :carts
    has_many :products, through: :carts
    has_many :orders, foreign_key: 'customer_id'
    belongs_to :user_role, foreign_key: 'role_id'
    belongs_to :chat_group, foreign_key: 'user_id', optional: true
    belongs_to :chat, foreign_key: 'user_id', optional: true

    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Must be a valid email address" }
    validates :full_name, presence: true
end
