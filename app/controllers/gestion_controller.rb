class GestionController < ApplicationController

  # GET /paiements
  def paiements
      if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
        return head :forbidden
      end
    @paiements_all = Paiement.all
    @paie_sold = @paiements.where(valide: true).sum("montant")
    @rest_du = @paiements.where(valide: false || nil).sum("montant")
  end

  # GET /commandes
  def commandes
      if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
        return head :forbidden
      end
    @commandes_all = Commande.all
  end

  # GET /tableau
  def tableau
      if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
        return head :forbidden
      end
  end

  # GET /factures
  def factures
      if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
        return head :forbidden
      end
    Dir.chdir("#{Rails.root}/public/factures")
    @pdf = Dir.glob('*.pdf')
    Dir.chdir(Rails.root)
    @pdfs = Kaminari.paginate_array(@pdf).page(params[:page]).per(10)
  end
end