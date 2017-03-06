class AddColumnsToBoats < ActiveRecord::Migration[5.0]
  def change
  	add_column :boats, :name, :string
  end
end
