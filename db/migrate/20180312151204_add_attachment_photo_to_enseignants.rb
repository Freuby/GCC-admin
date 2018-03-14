class AddAttachmentPhotoToEnseignants < ActiveRecord::Migration
  def self.up
    change_table :enseignants do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :enseignants, :photo
  end
end
