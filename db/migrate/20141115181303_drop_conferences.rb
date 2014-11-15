class DropConferences < ActiveRecord::Migration
  def change
    drop_table :conferences
  end
end
