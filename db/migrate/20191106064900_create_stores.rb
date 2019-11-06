class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.integer :manager_staff_id
      t.integer :address_id
      t.datetime :last_update

      t.timestamps
    end
  end
end
