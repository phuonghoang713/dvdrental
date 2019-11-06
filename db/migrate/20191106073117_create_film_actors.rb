class CreateFilmActors < ActiveRecord::Migration[6.0]
  def change
    create_table :film_actors do |t|
      t.integer :actor_id
      t.integer :film_id
      t.datetime :last_update

      t.timestamps
    end
  end
end
