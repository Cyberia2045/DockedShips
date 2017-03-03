class AddColumnToBoats < ActiveRecord::Migration[5.0]
  def change

  	add_column :boats, :total_cont, :integer

  end
end
