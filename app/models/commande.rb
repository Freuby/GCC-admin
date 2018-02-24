class Commande < ApplicationRecord
  belongs_to :user
  belongs_to :paiement
  belongs_to :com_batigrado
  belongs_to :ticket_repa
  belongs_to :compdt, dependent: :destroy
  belongs_to :elefe
end
