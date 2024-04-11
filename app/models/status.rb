class Status < ApplicationRecord
    has_many :orders

    validates :status, presence: true
end
