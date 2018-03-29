class Paiement < ApplicationRecord
  has_many :commandes, dependent: :destroy
end
