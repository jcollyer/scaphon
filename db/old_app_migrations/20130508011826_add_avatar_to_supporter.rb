class AddAvatarToSupporter < ActiveRecord::Migration
    def self.up
    add_attachment :supporters, :avatar
  end

  def self.down
    remove_attachment :supporters, :avatar
  end
end
