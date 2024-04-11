class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :name_on_card
      t.string :card_number
      t.string :expiration_date
      t.string :cvv
      t.string :zip_code
      t.string :billing_address

      t.timestamps
    end
  end
end
