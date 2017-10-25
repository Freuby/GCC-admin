class Elefe < ApplicationRecord
  has_many :etats
  has_many :ticketrepas
  has_many :presences, through: :etats
  has_and_belongs_to_many :cours
  has_many :batigrados
  has_many :batigrados, through: :combatigrados
  belongs_to :user
end
