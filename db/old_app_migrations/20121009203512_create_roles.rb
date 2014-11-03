class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.boolean :admin
      t.boolean :user

      t.timestamps
    end
  end
end
