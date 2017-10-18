class Cour < ApplicationRecord
  belongs_to :enseignant
  has_and_belongs_to_many :eleves
end
