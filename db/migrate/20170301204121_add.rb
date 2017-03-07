class Add < ActiveRecord::Migration[5.0]
  def change
  	add_column :jobs, :description, :string
  	add_column :jobs, :origin, :string
  	add_column :jobs, :destination, :string
  	add_column :jobs, :cost, :decimal, :precision => 8, :scale => 2
  	add_column :jobs, :containers, :integer
  end
end
