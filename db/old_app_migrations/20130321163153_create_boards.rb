class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.date :date
      t.string :title
      t.string :info
      t.string :email

      t.timestamps
    end
  end
end
