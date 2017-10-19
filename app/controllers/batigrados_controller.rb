class BatigradosController < ApplicationController
  before_action :set_batigrado, only: [:show, :edit, :update, :destroy]

  # GET /batigrados
  # GET /batigrados.json
  def index
    @batigrados = Batigrado.all
  end

  # GET /batigrados/1
  # GET /batigrados/1.json
  def show
  end

  # GET /batigrados/new
  def new
    @batigrado = Batigrado.new
  end

  # GET /batigrados/1/edit
  def edit
  end

  # POST /batigrados
  # POST /batigrados.json
  def create
    @batigrado = Batigrado.new(batigrado_params)

    respond_to do |format|
      if @batigrado.save
        format.html { redirect_to @batigrado, notice: 'Batigrado was successfully created.' }
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
    respond_to do |format|
      if @batigrado.update(batigrado_params)
        format.html { redirect_to @batigrado, notice: 'Batigrado was successfully updated.' }
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
    @batigrado.destroy
    respond_to do |format|
      format.html { redirect_to batigrados_url, notice: 'Batigrado was successfully destroyed.' }
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
      params.require(:batigrado).permit(:titre, :date_bat, :tail_tshirt, :tail_pant, :tarif1, :tarif2, :grad_up, :boolean, :repas1, :repas2, :repas3, :soiree, :info_regl)
    end
end
