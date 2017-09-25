class CreateCartedShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_shoes do |t|
      t.integer :user_id
      t.integer :shoe_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
