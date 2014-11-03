class AddFileToNewsletters < ActiveRecord::Migration
  def self.up
    add_attachment :newsletters, :file
  end

  def self.down
    remove_attachment :newsletters, :file
  end
end
