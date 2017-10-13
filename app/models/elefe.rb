class Elefe < ApplicationRecord
  has_many :etats
  has_many :presences, through: :etats
end
