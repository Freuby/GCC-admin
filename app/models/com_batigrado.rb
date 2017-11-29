class ComBatigrado < ApplicationRecord
  belongs_to :batigrado
  belongs_to :elefe
  has_many :commandes

  validates :nom, :prenom, :email, :ttshirt, presence: true
end
