class BatigradosController < ApplicationController
  before_action :set_batigrado, only: [:show, :edit, :update, :destroy]

  # GET /batigrados
  # GET /batigrados.json
  def index

  end

  # GET /batigrados/1
  # GET /batigrados/1.json
  def show
  end

  # GET /batigrados/new
  def new
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    @batigrado = Batigrado.new
  end

  # GET /batigrados/1/edit
  def edit
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
  end

  # POST /batigrados
  # POST /batigrados.json
  def create
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    @batigrado = Batigrado.new(batigrado_params)

    respond_to do |format|
      if @batigrado.save
        format.html { redirect_to @batigrado, notice: 'Le batigrado a bien été ajouté.' }
        format.json { render :show, status: :created, location: @batigrado }
      else
        format.html { render :new }
        format.json { render json: @batigrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batigrados/1
  # PATCH/PUT /batigrados/1.json
  def update
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    respond_to do |format|
      if @batigrado.update(batigrado_params)
        format.html { redirect_to @batigrado, notice: 'Le batigrado a bien été modifié.' }
        format.json { render :show, status: :ok, location: @batigrado }
      else
        format.html { render :edit }
        format.json { render json: @batigrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batigrados/1
  # DELETE /batigrados/1.json
  def destroy
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
      return head :forbidden
    end
    @batigrado.destroy
    respond_to do |format|
      format.html { redirect_to batigrados_url, notice: 'Le batigrado a bien été effacé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batigrado
      @batigrado = Batigrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batigrado_params
      params.require(:batigrado).permit(:titre, :description, :date_bat, :adresse, :cp, :ville, :tarif1, :tarif2, :tarif_ext, :tar_rep1, :tar_rep2, :tar_rep3, :tar_soiree, :adr_soiree, :heur_soiree, :photo, :batiasso_id)
    end
end
