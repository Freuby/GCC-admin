class AddPaiementToCommandes < ActiveRecord::Migration[5.0]
  def change
    add_reference :commandes, :paiement, foreign_key: true
  end
end
