class CreateProductSizes < ActiveRecord::Migration[7.1]
  def change
    create_table :product_sizes do |t|
      t.string :size_name

      t.timestamps
    end
  end
end
