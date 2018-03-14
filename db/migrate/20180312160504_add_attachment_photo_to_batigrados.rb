class AddAttachmentPhotoToBatigrados < ActiveRecord::Migration
  def self.up
    change_table :batigrados do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :batigrados, :photo
  end
end
