class AddAttachmentImageToBoats < ActiveRecord::Migration
  def self.up
    change_table :boats do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :boats, :image
  end
end
