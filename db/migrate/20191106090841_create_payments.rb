class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :customer_id
      t.integer :staff_id
      t.integer :rental_id
      t.float :amount
      t.datetime :payment_date

      t.timestamps
    end
  end
end
