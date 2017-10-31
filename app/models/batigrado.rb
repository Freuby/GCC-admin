class Batigrado < ApplicationRecord
  has_many :com_batigrados
  has_many :eleves, through: :com_batigrados
end
