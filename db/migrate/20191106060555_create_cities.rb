class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :country_id
      t.datetime :last_update

      t.timestamps
    end
  end
end
