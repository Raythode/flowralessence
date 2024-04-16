class AddAboutFlowerIdToProductType < ActiveRecord::Migration[7.1]
  def change
    add_column :product_types, :about_flower_id, :integer
  end
end
