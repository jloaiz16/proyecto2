class LocationsUserKey < ActiveRecord::Migration
  def change
    remove_foreign_key :locations, :users
    add_foreign_key :locations, :usergoogles
  end
end
