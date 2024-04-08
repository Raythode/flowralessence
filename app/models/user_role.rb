class UserRole < ApplicationRecord
    has_many :user

    validates :role, presence: true, uniqueness: true
end
