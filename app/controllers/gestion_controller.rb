class GestionController < ApplicationController

  # GET /paiements
  def paiements
    @paiements_all = Paiement.all
    @paie_sold = @paiements.where(valide: true).sum("montant")
    @rest_du = @paiements.where(valide: false || nil).sum("montant")
  end

  # GET /commandes
  def commandes
    @commandes_all = Commande.all
  end

  # GET /tableau
  def tableau

  end

end