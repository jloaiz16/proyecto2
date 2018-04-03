class AddIndexToUsers < ActiveRecord::Migration
  def change
    add_index(:users, [:email, :sign_in_count])
    add_index :usergoogles, :location_id
  end
end
