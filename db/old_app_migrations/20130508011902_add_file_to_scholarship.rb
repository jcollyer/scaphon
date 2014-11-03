class AddFileToScholarship < ActiveRecord::Migration
  def self.up
    add_attachment :scholarships, :file
  end

  def self.down
    remove_attachment :scholarships, :file
  end
end
