class AddSupplierIdToShoes < ActiveRecord::Migration[5.1]
  def change
    add_column :shoes, :supplier_id, :integer
  end
end
