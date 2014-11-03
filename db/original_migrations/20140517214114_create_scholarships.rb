class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :name
      t.string :author
      t.text :info

      t.timestamps
    end
  end
end
