class CreateAboutFlowers < ActiveRecord::Migration[7.1]
  def change
    create_table :about_flowers do |t|
      t.string :flower_description_1
      t.string :flower_description_2

      t.timestamps
    end
  end
end
