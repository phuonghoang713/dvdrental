class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :film_id
      t.integer :store_id
      t.datetime :last_update

      t.timestamps
    end
  end
end
