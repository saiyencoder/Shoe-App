class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :color
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
