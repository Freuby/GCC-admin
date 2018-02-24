class CommandesController < ApplicationController
  before_action :set_commande, only: [:show, :edit, :update, :destroy]

  # GET /commandes
  # GET /commandes.json
  def index
    @commandes = Commande.where(user_id: current_user.id).all
  end

  # GET /commandes/1
  # GET /commandes/1.json
  def show
  end

  # GET /commandes/new
  def new
    @commande = Commande.new
  end

  # GET /commandes/1/edit
  def edit
  end

  # POST /commandes
  # POST /commandes.json
  def create

  end

  # PATCH/PUT /commandes/1
  # PATCH/PUT /commandes/1.json
  def update

  end

  # DELETE /commandes/1
  # DELETE /commandes/1.json
  def destroy
    @commande.destroy
    respond_to do |format|
      format.html { redirect_to panier_path, notice: 'Votre commande a bien été annulée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commande
      @commande = Commande.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commande_params
      params.require(:commande).permit(:description, :montant, :user_id, :com_batigrado_id, :ticket_repa_id, :sold, :elefe_id, :paiement_id, :compdt_id)
    end
end
