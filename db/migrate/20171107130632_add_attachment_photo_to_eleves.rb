class AddAttachmentPhotoToEleves < ActiveRecord::Migration
  def self.up
    change_table :eleves do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :eleves, :photo
  end
end
