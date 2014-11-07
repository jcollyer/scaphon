class AddPasswordHashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_hash, :string
    add_column :users, :password__salt, :string
  end
end
