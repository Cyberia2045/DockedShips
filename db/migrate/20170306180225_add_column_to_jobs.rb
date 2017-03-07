class AddColumnToJobs < ActiveRecord::Migration[5.0]
  def change

  	add_column :jobs, :status, :boolean


  end
end
