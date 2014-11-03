class AddAvatarToNewsletters < ActiveRecord::Migration
  def self.up
    add_attachment :newsletters, :avatar
  end

  def self.down
    remove_attachment :newsletters, :avatar
  end
end
