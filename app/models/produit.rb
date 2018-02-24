class Produit < ApplicationRecord
  has_many :compdts

  validates :ref, :nom, :prix, :descriptif, presence: true

  has_attached_file :photo1, styles: { medium: "x300", original: "x600", thumb: "x75" }, default_url: "pas-de-photo.jpg"
  validates :photo1, attachment_presence: false
  validates_attachment_content_type :photo1, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo1, less_than: 500.kilobytes

  has_attached_file :photo2, styles: { medium: "x300", original: "x600", thumb: "x75" }, default_url: "pas-de-photo.jpg"
  validates :photo2, attachment_presence: false
  validates_attachment_content_type :photo2, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo2, less_than: 500.kilobytes

  has_attached_file :photo3, styles: { medium: "x300", original: "x600", thumb: "x75" }, default_url: "pas-de-photo.jpg"
  validates :photo3, attachment_presence: false
  validates_attachment_content_type :photo3, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo3, less_than: 500.kilobytes

  has_attached_file :photo4, styles: { medium: "x300", original: "x600", thumb: "x75" }, default_url: "pas-de-photo.jpg"
  validates :photo4, attachment_presence: false
  validates_attachment_content_type :photo4, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo4, less_than: 500.kilobytes

  has_attached_file :photo5, styles: { medium: "x300", original: "x600", thumb: "x75" }, default_url: "pas-de-photo.jpg"
  validates :photo5, attachment_presence: false
  validates_attachment_content_type :photo5, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo5, less_than: 500.kilobytes

  has_attached_file :photo6, styles: { medium: "x300", original: "x600", thumb: "x75" }, default_url: "pas-de-photo.jpg"
  validates :photo6, attachment_presence: false
  validates_attachment_content_type :photo6, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo6, less_than: 500.kilobytes

  has_attached_file :notpdf, styles: { }, default_url: "pas-de-photo.jpg"
  validates :notpdf, attachment_presence: false
  validates_attachment_content_type :notpdf, content_type: ["image/jpeg", "image/gif", "image/png", "application/pdf"]
  validates_with AttachmentSizeValidator, attributes: :notpdf, less_than: 1.megabytes
end
