class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change

	rename_column :boats, :available_conatiners, :avail_cont


  end
end
