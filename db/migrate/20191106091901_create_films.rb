class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
      t.string :release_year
      t.integer :language_id
      t.integer :rental_duration
      t.float :rental_rate
      t.integer :length
      t.integer :replacement_cost
      t.text :special_features, array: true

      t.timestamps
    end
  end
end
