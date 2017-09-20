class CreateCategoryShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_shoes do |t|
      t.integer :category_id
      t.integer :shoe_id

      t.timestamps
    end
  end
end
