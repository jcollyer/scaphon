class AddDescriptionToAffairs < ActiveRecord::Migration
  def change
    add_column :affairs, :description, :text
  end
end
