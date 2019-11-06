class CreateFilmCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :film_categories do |t|
      t.integer :film_id
      t.integer :category_id
      t.datetime :last_update

      t.timestamps
    end
  end
end
