class CreateBoardMembers < ActiveRecord::Migration
  def change
    create_table :board_members do |t|
      t.string :name
      t.string :position
      t.text :info

      t.timestamps
    end
  end
end
