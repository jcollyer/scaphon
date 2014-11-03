class AddAvatarToBoard < ActiveRecord::Migration
  def self.up
    add_attachment :boards, :avatar
  end

  def self.down
    remove_attachment :boards, :avatar
  end
end
