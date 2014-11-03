class AddPaypalToQuarterlies < ActiveRecord::Migration
  def change
    add_column :quarterlies, :paypal, :text
  end
end
