class Presence < ApplicationRecord
  belongs_to :cour
  belongs_to :enseignant
  has_many :etats, dependent: :delete_all
  has_many :eleves, through: :etats
end
