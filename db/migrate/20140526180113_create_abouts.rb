class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :about
      t.text :scaphon
      t.text :aphon
      t.text :csp
      t.text :more

      t.timestamps
    end
  end
end
