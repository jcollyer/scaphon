class RemoveStuffFromSupporters < ActiveRecord::Migration
  def change
    remove_column :supporters, :date, :date
    remove_column :supporters, :fee, :integer
    remove_column :supporters, :platinum, :boolean
    remove_column :supporters, :gold, :boolean
    remove_column :supporters, :silver, :boolean
    remove_column :supporters, :bronze, :boolean
    remove_column :supporters, :avatar_file_name, :string
    remove_column :supporters, :avatar_file_size, :integer
    remove_column :supporters, :file_file_name, :string
    remove_column :supporters, :file_file_size, :integer
    remove_column :supporters, :file_content_type, :string
    remove_column :supporters, :file_updated_at, :datetime
  end
end
