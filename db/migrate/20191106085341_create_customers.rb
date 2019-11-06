class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.integer :store_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :address_id
      t.boolean :activebool
      t.integer :active

      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
