class AddStatusToSupporter < ActiveRecord::Migration
  def change
    add_column :supporters, :status, :string
    add_column :supporters, :active, :boolean
  end
end
