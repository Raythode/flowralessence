class CreateOccassions < ActiveRecord::Migration[7.1]
  def change
    create_table :occassions do |t|
      t.string :occassion_name

      t.timestamps
    end
  end
end
