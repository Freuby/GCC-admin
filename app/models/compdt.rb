class Compdt < ApplicationRecord
  belongs_to :user
  belongs_to :produit
  has_many :commandes, dependent: :destroy
end
