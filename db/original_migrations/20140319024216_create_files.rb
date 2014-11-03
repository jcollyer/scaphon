class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :name
      t.references :fileable, polymorphic: true
      t.timestamps
    end
  end
end
