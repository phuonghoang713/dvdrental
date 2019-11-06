class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.integer :address_id
      t.string :email
      t.integer :store_id
      t.boolean :active
      t.datetime :last_update
      t.binary :picture

      t.timestamps
    end
  end

  def down
    drop_table :staff
  end
end
