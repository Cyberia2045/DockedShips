class AddAvatarColumnsToBoats < ActiveRecord::Migration
  def up
    add_attachment :boats, :avatar
  end

  def down
    remove_attachment :boats, :avatar
  end
end