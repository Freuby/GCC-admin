class ComBatigradosController < ApplicationController
  before_action :set_com_batigrado, only: [:show, :edit, :update, :destroy]

  # GET /com_batigrados
  # GET /com_batigrados.json
  def index
    @com_batigrados = ComBatigrado.all
  end

  # GET /com_batigrados/1
  # GET /com_batigrados/1.json
  def show
  end

  # GET /com_batigrados/new
  def new
    @com_batigrado = ComBatigrado.new
    @batigrados = Batigrado.all
  end

  # GET /com_batigrados/1/edit
  def edit
  end

  # POST /com_batigrados
  # POST /com_batigrados.json
  def create
    @com_batigrado = ComBatigrado.new(com_batigrado_params)

    respond_to do |format|
      if @com_batigrado.save
        format.html { redirect_to @com_batigrado, notice: 'Com batigrado was successfully created.' }
        format.json { render :show, status: :created, location: @com_batigrado }
      else
        format.html { render :new }
        format.json { render json: @com_batigrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /com_batigrados/1
  # PATCH/PUT /com_batigrados/1.json
  def update
    respond_to do |format|
      if @com_batigrado.update(com_batigrado_params)
        format.html { redirect_to @com_batigrado, notice: 'Com batigrado was successfully updated.' }
        format.json { render :show, status: :ok, location: @com_batigrado }
      else
        format.html { render :edit }
        format.json { render json: @com_batigrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /com_batigrados/1
  # DELETE /com_batigrados/1.json
  def destroy
    @com_batigrado.destroy
    respond_to do |format|
      format.html { redirect_to com_batigrados_url, notice: 'Com batigrado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_com_batigrado
      @com_batigrado = ComBatigrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def com_batigrado_params
      params.require(:com_batigrado).permit(:nom, :prenom, :nom_grupo, :email, :ttshirt, :tpant, :bati1, :bati2, :gradup, :repas1, :repas2, :repas3, :soiree, :montant, :reglt)
    end
end
