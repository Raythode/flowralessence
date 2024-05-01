class AboutFlower < ApplicationRecord
    has_one :product_type
    has_rich_text :flower_description_1
    has_rich_text :flower_description_2
end
