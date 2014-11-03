class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone_home
      t.integer :phone_work
      t.boolean :nurse
      t.string :institution
      t.string :rn_id
      t.string :stage_registerd
      t.boolean :aphon_member
      t.boolean :scaphon_member

      t.timestamps
    end
  end
end
