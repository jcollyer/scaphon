class DropQuarterlies < ActiveRecord::Migration
  def change
    drop_table :quarterlies
  end
end
