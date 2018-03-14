class EnseignantsController < ApplicationController
  before_action :set_enseignant, only: [:show, :edit, :create, :update, :destroy]

  # GET /enseignants
  # GET /enseignants.json
  def index

  end

  # GET /enseignants/1
  # GET /enseignants/1.json
  def show
    @cours_ens = @cours.where(:enseignant_id => @enseignant.id).all
  end

  # GET /enseignants/new
  def new
    @enseignant = Enseignant.new
  end

  # GET /enseignants/1/edit
  def edit
  end

  # POST /enseignants
  # POST /enseignants.json
  def create
    @enseignant = Enseignant.new(enseignant_params)

    respond_to do |format|
      if @enseignant.save
        format.html { redirect_to @enseignant, notice: "L'enseignant a bien été ajouté." }
        format.json { render :show, status: :created, location: @enseignant }
      else
        format.html { render :new }
        format.json { render json: @enseignant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enseignants/1
  # PATCH/PUT /enseignants/1.json
  def update
    respond_to do |format|
      if @enseignant.update(enseignant_params)
        format.html { redirect_to @enseignant, notice: "L'enseignant a bien été modifié." }
        format.json { render :show, status: :ok, location: @enseignant }
      else
        format.html { render :edit }
        format.json { render json: @enseignant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enseignants/1
  # DELETE /enseignants/1.json
  def destroy
    @enseignant.destroy
    respond_to do |format|
      format.html { redirect_to enseignants_url, notice: "L'enseignant a bien été effacé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enseignant
      if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2)
        return head :forbidden
      end
      @enseignant = Enseignant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enseignant_params
      params.require(:enseignant).permit(:nom, :prenom, :graduation, :photo)
    end

end
