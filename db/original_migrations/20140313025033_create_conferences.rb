class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.date :date
      t.string :location
      t.float :cost
      t.text :paypal

      t.timestamps
    end
  end
end
