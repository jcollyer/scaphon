class CreateConferences < ActiveRecord::Migration
  def change
    create_table 	:conferences do |t|
    	 t.string 	:name, :null => false, :default => ""
    	 t.date 	:date, :null => false
    	 t.string 	:location
    	 t.integer	:cost

      t.timestamps
    end
  end
end
