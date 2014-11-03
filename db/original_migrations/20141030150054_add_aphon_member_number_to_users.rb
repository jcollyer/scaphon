class AddAphonMemberNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :aphon_member_number, :string
  end
end
