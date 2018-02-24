class AddAttachmentPhoto1Photo2Photo3Photo3Photo5Photo6NotpdfToProduits < ActiveRecord::Migration
  def self.up
    add_attachment :produits, :photo1
    add_attachment :produits, :photo2
    add_attachment :produits, :photo3
    add_attachment :produits, :photo4
    add_attachment :produits, :photo5
    add_attachment :produits, :photo6
    add_attachment :produits, :notpdf
  end

  def self.down
    remove_attachment :produits, :photo1
    remove_attachment :produits, :photo2
    remove_attachment :produits, :photo3
    remove_attachment :produits, :photo3
    remove_attachment :produits, :photo5
    remove_attachment :produits, :photo6
    remove_attachment :produits, :notpdf
  end
end
