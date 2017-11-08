class AddAttachmentCertifmedToEleves < ActiveRecord::Migration
  def self.up
    change_table :eleves do |t|
      t.attachment :certifmed
    end
  end

  def self.down
    remove_attachment :eleves, :certifmed
  end
end
