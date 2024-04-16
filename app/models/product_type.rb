class ProductType < ApplicationRecord
    has_one :product
    belongs_to :about_flower, foreign_key: 'about_flower_id', optional: true
end
