class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.datetime :last_update
      t.timestamps
    end
  end

  def down
    drop_table :quote_extra_requirements
  end
end
