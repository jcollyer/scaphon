class AddFileToQuarterly < ActiveRecord::Migration
    def self.up
    add_attachment :quarterlies, :file
  end

  def self.down
    remove_attachment :quarterlies, :file
  end
end
