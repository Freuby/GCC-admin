class Commande < ApplicationRecord
  belongs_to :user
  belongs_to :paiement, dependent: :destroy
  belongs_to :com_batigrado, dependent: :destroy
  belongs_to :ticket_repa, dependent: :destroy
  belongs_to :compdt, dependent: :destroy
  belongs_to :elefe
end
