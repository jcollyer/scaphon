class AddAphonExpirationDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :aphon_expiration_date, :datetime
  end
end
