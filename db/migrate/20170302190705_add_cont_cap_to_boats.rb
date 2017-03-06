class AddContCapToBoats < ActiveRecord::Migration[5.0]
  def change

  	add_column :boats, :available_conatiners, :integer

  end
end
