class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :name
      t.date :date
      t.integer :fee
      t.boolean :platinum
      t.boolean :gold
      t.boolean :silver
      t.boolean :bronze

      t.timestamps
    end
  end
end
