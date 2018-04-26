class CompdtsController < ApplicationController
  before_action :set_compdt, only: [:show, :edit, :update, :destroy]

  # GET /compdts
  # GET /compdts.json
  def index
    @compdts = Compdt.where(user_id: current_user.id).all
    @compdtsall = Compdt.all
  end

  # GET /compdts/1
  # GET /compdts/1.json
  def show
  end

  # GET /compdts/new
  def new
    @compdt = Compdt.new
  end

  # GET /compdts/1/edit
  def edit
  end

  # POST /compdts
  # POST /compdts.json
  def create
    @compdt = Compdt.new(compdt_params)
    produit = Produit.find(@compdt.produit_id)

    current_user.commandes << Commande.create(description: params[:compdt][:qte]+'x'+produit.nom, montant: produit.prix*params[:compdt][:qte].to_f)
    @compdt.commandes << current_user.commandes.last

    respond_to do |format|
      if @compdt.save
        format.html { redirect_to @compdt, notice: 'Votre commande est ajoutée au panier.' }
        format.json { render :show, status: :created, location: @compdt }
      else
        format.html { render :new }
        format.json { render json: @compdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compdts/1
  # PATCH/PUT /compdts/1.json
  def update
    respond_to do |format|
      if @compdt.update(compdt_params)
        format.html { redirect_to @compdt, notice: 'Votre commande a bien été modifiée.' }
        format.json { render :show, status: :ok, location: @compdt }
      else
        format.html { render :edit }
        format.json { render json: @compdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compdts/1
  # DELETE /compdts/1.json
  def destroy
    @compdt.destroy
    respond_to do |format|
      format.html { redirect_to compdts_url, notice: 'Votre commande a bien été supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compdt
      @compdt = Compdt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compdt_params
      params.require(:compdt).permit(:qte, :couleur, :taille, :typ_livr, :vill_collect, :nom, :prenom, :rue, :cp, :ville, :user_id, :produit_id)
    end
end
