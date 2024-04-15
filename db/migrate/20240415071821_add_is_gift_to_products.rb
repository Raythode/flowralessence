class AddIsGiftToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :is_gift, :boolean
  end
end
