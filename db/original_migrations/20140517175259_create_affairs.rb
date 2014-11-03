class CreateAffairs < ActiveRecord::Migration
  def change
    create_table :affairs do |t|
      t.string :kind
      t.string :name
      t.date :date
      t.string :location
      t.float :cost
      t.text :paypal

      t.timestamps
    end
  end
end
