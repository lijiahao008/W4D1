class AddconstraintToContactshare < ActiveRecord::Migration
  def change
    remove_column :contact_shares, :user_id
    remove_column :contact_shares, :contact_id
    add_column :contact_shares, :user_id, :integer, null: false
    add_column :contact_shares, :contact_id, :integer, null: false
    add_index :contact_shares, [:user_id, :contact_id], unique: true
    add_index :contact_shares, :user_id
    add_index :contact_shares, :contact_id
  end
end
