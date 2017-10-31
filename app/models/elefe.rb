class Elefe < ApplicationRecord
  has_many :etats
  has_many :ticketrepas
  has_many :presences, through: :etats
  has_and_belongs_to_many :cours
  has_many :com_batigrados
  has_many :batigrados, through: :com_batigrados
  belongs_to :user
end
