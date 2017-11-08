class ComBatigrado < ApplicationRecord
  belongs_to :batigrado
  belongs_to :elefe

  validates :nom, :prenom, :email, :ttshirt, :bati1, presence: true
end
