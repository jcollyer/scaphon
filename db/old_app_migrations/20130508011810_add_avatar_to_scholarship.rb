class AddAvatarToScholarship < ActiveRecord::Migration
  def self.up
    add_attachment :scholarships, :avatar
  end

  def self.down
    remove_attachment :scholarships, :avatar
  end
end
