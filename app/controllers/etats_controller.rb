class EtatsController < ApplicationController
  before_action :set_etat, only: [:show, :edit, :update, :destroy]

  # GET /etats
  # GET /etats.json
  def index
    @etats = Etat.all
  end

  # GET /etats/1
  # GET /etats/1.json
  def show
  end

  # GET /etats/new
  def new
    @etat = Etat.new
  end

  # GET /etats/1/edit
  def edit
  end

  # POST /etats
  # POST /etats.json
  def create
    @etat = Etat.new(etat_params)

    respond_to do |format|
      if @etat.save
        format.html { redirect_to @etat, notice: 'Etat was successfully created.' }
        format.json { render :show, status: :created, location: @etat }
      else
        format.html { render :new }
        format.json { render json: @etat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etats/1
  # PATCH/PUT /etats/1.json
  def update
    respond_to do |format|
      if @etat.update(etat_params)
        format.html { redirect_to @etat, notice: 'Etat was successfully updated.' }
        format.json { render :show, status: :ok, location: @etat }
      else
        format.html { render :edit }
        format.json { render json: @etat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etats/1
  # DELETE /etats/1.json
  def destroy
    @etat.destroy
    respond_to do |format|
      format.html { redirect_to etats_url, notice: 'Etat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etat
      @etat = Etat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etat_params
      params.require(:etat).permit(:etat, :description)
    end
end
