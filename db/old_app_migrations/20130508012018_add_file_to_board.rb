class AddFileToBoard < ActiveRecord::Migration
  def self.up
    add_attachment :boards, :file
  end

  def self.down
    remove_attachment :boards, :file
  end
end
