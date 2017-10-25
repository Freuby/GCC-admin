class Batigrado < ApplicationRecord
  has_many :combatigrados
  has_many :eleves, through: :combatigrados
end
