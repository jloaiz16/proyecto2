class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :usergoogle, index: true, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.string :addres
      t.text :description
      t.string :title

      t.timestamps null: false
    end
  end
end
