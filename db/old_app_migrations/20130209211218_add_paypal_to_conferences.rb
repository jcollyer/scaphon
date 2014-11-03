class AddPaypalToConferences < ActiveRecord::Migration
  def change
    add_column :conferences, :paypal, :text
  end
end
