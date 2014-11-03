class CreateQuarterlies < ActiveRecord::Migration
  def change
    create_table :quarterlies do |t|
    	t.string 	:name
    	t.string 	:location
    	t.date 		:date
    	t.integer	:cost
      t.timestamps
    end
  end
end
