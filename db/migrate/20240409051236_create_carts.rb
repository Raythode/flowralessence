class CreateCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :carts do |t|
      t.integer :customer_id, index:true, foreign_key: true
      t.integer :product_id,  index:true, foreign_key: true
      t.integer :product_quantity

      t.timestamps
    end
  end
end
