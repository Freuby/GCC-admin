class PresencesController < ApplicationController
  before_action :set_presence, only: [:show, :edit, :update, :destroy]

  # POST /presencesel
  def presencesel
    @cours = Cour.all
  end

  # POST /consulpres
  def consulpres
    @cours = Cour.all
  end

  # GET /presences
  # GET /presences.json
  def index
    cour = params[:select][:cour]
    @presences = Presence.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => cour).all
    @presence = @presences.last
    @cour = Cour.where(:id => params[:select][:cour])
  end

  # GET /presences/1
  # GET /presences/1.json
  def show
    @presences = Presence.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => @presence.cour_id).all
    @presence = @presences.last
    @enseignants = Enseignant.all
    @eleves = Elefe.where(:ville_entrainement => @presence.cour_id).all
  end

  # GET /presences/new
  def new
    @presence = Presence.new
    @eleves = Elefe.where(:ville_entrainement => params[:select][:cour]).all
    @cour = Cour.where(:id => params[:select][:cour])
    @enseignants = Enseignant.all
  end

  # GET /presences/1/edit
  def edit
  end

  # POST /presences
  # POST /presences.json
  def create
    @eleves = Elefe.where(:ville_entrainement => params[:presence][:cour_id]).all
    date = params[:presence]['datecours(1i)']+"-"+params[:presence]['datecours(2i)']+"-"+params[:presence]['datecours(3i)']
    date = date.to_date
    @presence = Presence.new(:datecours => date)
    @etat = params[:presence][:etat]
    @eleves.each_with_index do |elefe, i|
      @presence.etats << elefe.etats.create(etat: @etat[i])
    end
    @presence.enseignant_id = params[:presence][:enseignant_id]
    @presence.cour_id = params[:presence][:cour_id]
    @presence.save


    respond_to do |format|
      if @presence.save
        format.html { redirect_to @presence, notice: 'Les présences ont bien été enregistrées.' }
        format.json { render :show, status: :created, location: @presence }
      else
        format.html { render :new }
        format.json { render json: @presence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presences/1
  # PATCH/PUT /presences/1.json
  def update
    respond_to do |format|
      if @presence.update(presence_params)
        format.html { redirect_to @presence, notice: 'Les présences ont bien été modifiées.' }
        format.json { render :show, status: :ok, location: @presence }
      else
        format.html { render :edit }
        format.json { render json: @presence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presences/1
  # DELETE /presences/1.json
  def destroy
    @presence.destroy
    respond_to do |format|
      format.html { redirect_to presences_url, notice: 'Presence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presence
      @presence = Presence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presence_params
      params.require(:presence).permit(:datecours, :etat, :elefe_id, :cour_id, :enseignant_id)
    end
end
