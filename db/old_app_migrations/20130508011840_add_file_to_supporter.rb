class AddFileToSupporter < ActiveRecord::Migration
  def self.up
    add_attachment :supporters, :file
  end

  def self.down
    remove_attachment :supporters, :file
  end
end
