class RemovePasswordSaltToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :password__salt, :string
  end
end
