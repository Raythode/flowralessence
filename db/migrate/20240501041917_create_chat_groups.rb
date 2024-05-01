class CreateChatGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_groups do |t|
      t.integer :user_id
      t.integer :about_product_id

      t.timestamps
    end
  end
end
