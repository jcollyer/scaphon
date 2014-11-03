class AddAvatarToConference < ActiveRecord::Migration
  def self.up
    add_attachment :conferences, :avatar
  end

  def self.down
    remove_attachment :conferences, :avatar
  end
end
