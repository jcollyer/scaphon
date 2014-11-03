class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
    	t.string 	:author
    	t.text 	  :info
    	t.string 	:name
    end
  end
end
