class DropExhibitors < ActiveRecord::Migration
  def change
    drop_table :exhibitors
  end
end
