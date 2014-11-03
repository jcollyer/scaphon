class AddFileToEvent < ActiveRecord::Migration
  def self.up
    add_attachment :events, :file
  end

  def self.down
    remove_attachment :events, :file
  end
end
