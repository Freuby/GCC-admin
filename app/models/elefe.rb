class Elefe < ApplicationRecord
  has_many :etats
  has_many :ticketrepas
  has_many :presences, through: :etats
  has_and_belongs_to_many :cours
  has_and_belongs_to_many :batigrados
  belongs_to :user
end
