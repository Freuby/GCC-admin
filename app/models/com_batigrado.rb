class ComBatigrado < ApplicationRecord
  belongs_to :batigrado
  belongs_to :elefe
  has_many :commandes

  validates :nom, :prenom, :nom_grupo, :email, :ttshirt, presence: true
end
