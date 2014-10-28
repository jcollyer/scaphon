class AddDescriptionbToCommunites < ActiveRecord::Migration
  def change
    add_column :communities, :descriptionb, :text
  end
end
