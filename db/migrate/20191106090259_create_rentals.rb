class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.datetime :rental_date
      t.integer :inventory_id
      t.integer :customer_id
      t.datetime :return_date
      t.integer :staff_id

      t.timestamps
    end
  end
end
