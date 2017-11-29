class Paiement < ApplicationRecord
  has_many :commandes
end
