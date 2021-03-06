class Batigrado < ApplicationRecord
  has_many :com_batigrados
  has_many :eleves, through: :com_batigrados

  validates :titre, :date_bat, :tarif1, :tarif2, :tarif_ext, presence: true

  has_attached_file :photo, styles: { medium: "175x225>", original: "350x450>", thumb: "70x90>" }, default_url: "batigrado.png"
  validates :photo, attachment_presence: false
  validates_attachment_content_type :photo, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo, less_than: 1.megabytes
end
