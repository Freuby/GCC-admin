class ProduitsController < ApplicationController
  before_action :set_produit, only: [:show, :edit, :update, :destroy]

  # GET /produits
  # GET /produits.json
  def index
    @produits = Produit.all
  end

  # GET /produits/1
  # GET /produits/1.json
  def show
    prod = Produit.find(params[:id])
    if prod.taille.length > 0
      @tailles = prod.taille.split(',')
    end
  end

  # GET /produits/new
  def new
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    @produit = Produit.new
  end

  # GET /produits/1/edit
  def edit
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
  end

  # POST /produits
  # POST /produits.json
  def create
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    @produit = Produit.new(produit_params)

    respond_to do |format|
      if @produit.save
        format.html { redirect_to @produit, notice: 'Produit was successfully created.' }
        format.json { render :show, status: :created, location: @produit }
      else
        format.html { render :new }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produits/1
  # PATCH/PUT /produits/1.json
  def update
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    respond_to do |format|
      if @produit.update(produit_params)
        format.html { redirect_to @produit, notice: 'Produit was successfully updated.' }
        format.json { render :show, status: :ok, location: @produit }
      else
        format.html { render :edit }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produits/1
  # DELETE /produits/1.json
  def destroy
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    @produit.destroy
    respond_to do |format|
      format.html { redirect_to produits_url, notice: 'Produit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produit
      @produit = Produit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produit_params
      params.require(:produit).permit(:ref, :nom, :couleur, :marque, :prix, :dispo, :delai, :typ_livr, :tar_livr, :del_livr, :descriptif, :caract0, :attr0, :caract1, :attr1, :caract2, :attr2, :caract3, :attr3, :caract4, :attr4, :caract5, :attr5, :caract6, :attr6, :caract7, :attr7, :caract8, :attr8, :caract9, :attr9, :taille, :photo1, :photo2, :photo3, :photo4, :photo5, :photo6, :notpdf, :stock)
    end
end
