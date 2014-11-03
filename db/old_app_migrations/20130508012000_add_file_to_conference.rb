class AddFileToConference < ActiveRecord::Migration
  def self.up
    add_attachment :conferences, :file
  end

  def self.down
    remove_attachment :conferences, :file
  end
end
