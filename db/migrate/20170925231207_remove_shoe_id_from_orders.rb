class RemoveShoeIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :shoe_id, :integer
  end
end
