class Elefe < ApplicationRecord
  has_many :etats
  has_many :presences, through: :etats
  has_and_belongs_to_many :cours
  belongs_to :user
end
