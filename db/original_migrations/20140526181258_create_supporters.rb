class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :name
      t.string :status
      t.boolean :active

      t.timestamps
    end
  end
end
