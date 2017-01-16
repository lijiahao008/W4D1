class Changeuser < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :email
    add_column :users, :username, :string, unique: true
    add_index :users, :username
  end
end
