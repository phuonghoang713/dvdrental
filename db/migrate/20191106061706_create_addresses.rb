class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :address2
      t.string :district
      t.integer :city_id
      t.string :postal_code
      t.string :phone
      t.datetime :last_update

      t.timestamps
    end
  end

  def down
    drop_table :addresses
  end
end
