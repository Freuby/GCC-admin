class Elefe < ApplicationRecord
  has_many :etats
  has_many :ticketrepas
  has_many :presences, through: :etats
  has_and_belongs_to_many :cours
  has_many :com_batigrados
  has_many :batigrados, through: :com_batigrados
  belongs_to :user

  validates :nom, :prenom, :rue, :cp, :ville, :tel_mobile, :tel_fixe, :urgence_nom, :urgence_prenom, :urgence_tel, presence: true

  has_attached_file :photo, styles: { medium: "175x225!", original: "350x450!", thumb: "70x90!" }, default_url: "photo-anonyme.jpg"
  validates :photo, attachment_presence: false
  validates_attachment_content_type :photo, content_type: ["image/jpeg", "image/gif", "image/png"], message: "mauvais type de fichier"
  validates_with AttachmentSizeValidator, attributes: :photo, less_than: 1.megabytes

  has_attached_file :certifmed, styles: { }, default_url: "photo-anonyme.jpg"
  validates :certifmed, attachment_presence: false
  validates_attachment_content_type :certifmed, content_type: ["image/jpeg", "image/gif", "image/png", "application/pdf"]
  validates_with AttachmentSizeValidator, attributes: :certifmed, less_than: 1.megabytes
end
