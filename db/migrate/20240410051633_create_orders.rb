class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :order_number
      t.integer :product_id
      t.float :product_sale_price
      t.integer :product_quantity
      t.float :order_tax
      t.float :order_total
      t.integer :address_id
      t.integer :payment_info_id
      t.integer :status_id

      t.timestamps
    end
  end
end
