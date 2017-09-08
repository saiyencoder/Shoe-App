class ChangePriceTypeToShoes < ActiveRecord::Migration[5.1]
  def change
    change_column :shoes, :price, "numeric USING CAST(price AS numeric)"
    change_column :shoes, :price, :decimal, precision: 5, scale: 2
  end
end
