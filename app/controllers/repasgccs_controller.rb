class RepasgccsController < ApplicationController
  before_action :set_repasgcc, only: [:show, :edit, :update, :destroy]


  # GET /repasgccs
  # GET /repasgccs.json
  def index

  end

  # GET /repasgccs/1
  # GET /repasgccs/1.json
  def show
  end

  # GET /repasgccs/new
  def new
    @repasgcc = Repasgcc.new
  end

  # GET /repasgccs/1/edit
  def edit
  end

  # POST /repasgccs
  # POST /repasgccs.json
  def create
    @repasgcc = Repasgcc.new(repasgcc_params)

    respond_to do |format|
      if @repasgcc.save
        format.html { redirect_to @repasgcc, notice: 'Le formulaire pour le repas du grupo a bien été créé.' }
        format.json { render :show, status: :created, location: @repasgcc }
      else
        format.html { render :new }
        format.json { render json: @repasgcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repasgccs/1
  # PATCH/PUT /repasgccs/1.json
  def update
    respond_to do |format|
      if @repasgcc.update(repasgcc_params)
        format.html { redirect_to @repasgcc, notice: 'Le formulaire pour le repas du grupo a bien été modifié.' }
        format.json { render :show, status: :ok, location: @repasgcc }
      else
        format.html { render :edit }
        format.json { render json: @repasgcc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repasgccs/1
  # DELETE /repasgccs/1.json
  def destroy
    @repasgcc.destroy
    respond_to do |format|
      format.html { redirect_to repasgccs_url, notice: 'Le formulaire pour le repas du grupo a bien été supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repasgcc
      @repasgcc = Repasgcc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repasgcc_params
      params.require(:repasgcc).permit(:titre, :adresse, :date_repas, :date_lim, :repas1_enf, :r1e_tarif, :repas2_enf, :r2e_tarif, :repas1_ad, :r1a_tarif, :repas2_ad, :r2a_tarif)
    end

end
