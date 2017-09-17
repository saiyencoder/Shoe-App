class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :shoe_id
      t.text :url

      t.timestamps
    end
  end
end
