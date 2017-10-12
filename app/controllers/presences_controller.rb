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
    @presences = Presence.all
    @eleves = Elefe.where(:ville_entrainement => params[:select][:cour]).all
    @cour = Cour.where(:id => params[:select][:cour])
    @enseignants = Enseignant.all
  end

  # GET /presences/1
  # GET /presences/1.json
  def show
    @enseignants = Enseignant.all
    @eleves = Elefe.where(:ville_entrainement => @presence.cour_id).all
    @presences = Presence.where(:cour_id => @presence.cour_id).all
    @cour = Cour.where(:id => @presence.cour_id)
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
    @eleves.each_with_index do |elefe, i|
      @etat = params[:presence][:etat]
      @presence = Presence.new(:datecours => date, :etat => @etat[i], :elefe_id => elefe.id, :cour_id => params[:presence][:cour_id], :enseignant_id => params[:presence][:enseignant_id])
      @presence.save
    end


    respond_to do |format|
      if @presence.save
        format.html { redirect_to @presence, notice: 'Presence was successfully created.' }
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
        format.html { redirect_to @presence, notice: 'Presence was successfully updated.' }
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
