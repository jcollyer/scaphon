class AddAvatarToQuarterly < ActiveRecord::Migration
    def self.up
    add_attachment :quarterlies, :avatar
  end

  def self.down
    remove_attachment :quarterlies, :avatar
  end
end
