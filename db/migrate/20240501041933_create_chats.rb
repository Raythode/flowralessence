class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats do |t|
      t.integer :chat_group_id
      t.integer :user_id
      t.integer :reply_to
      t.text :message

      t.timestamps
    end
  end
end
