class PresencesController < ApplicationController
  before_action :set_presence, only: [:show, :edit, :update, :destroy]

  # POST /presencesel
  def presencesel

  end

  # POST /consulpres
  def consulpres

  end

  # GET /presences
  # GET /presences.json
  def index
    cour = params[:select][:cour]
    @presences = @presences_all.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => cour).all
    @presence = @presences.last
    @cour = Cour.where(:id => params[:select][:cour])
  end

  # GET /presences/1
  # GET /presences/1.json
  def show
    @eleves_pres = @presence.eleves
    cour = @presence.cour_id
    @presences = @presences_all.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => cour).all
    @presence = @presences.last
    @cour = Cour.where(:id => @presence.cour_id)
  end

  # GET /presences/new
  def new
      @cour = Cour.find_by(:id => params[:select][:cour])
      @eleves_pres = Array[]
      @presence = Presence.new
      @eleves.each do |elefe|
        c = elefe.cours
        if c.detect { |b| b.id == @cour.id }
          @eleves_pres << elefe
        end
      end
      @enseignants = Enseignant.all
  end

  # GET /presences/1/edit
  def edit
  end

  # POST /presences
  # POST /presences.json
  def create
    if params[:commit] == "Ajouter l'élève"
      nompren = params[:elefe]
      nompren = nompren.split(', ')
      el = Elefe.find_by(:nom => nompren[0], :prenom => nompren[1])
      c = Cour.find_by(:id => params[:presence][:cour_id])
      cours = el.cours
      if !cours.detect { |b| b.id == c.id }
        el.cours << c
      end
      redirect_back(fallback_location: :back)

    elsif params[:commit] == "Enlever l'élève"
      nompren = params[:elefe]
      nompren = nompren.split(', ')
      el = Elefe.find_by(:nom => nompren[0], :prenom => nompren[1])
      c = Cour.find_by(:id => params[:presence][:cour_id])
      el.cours.delete(c)
      redirect_back(fallback_location: :back)

    elsif params[:commit] == "Ajouter"
      puts "--------------"
      puts params[:elefe_nom][:Nom]
      puts params[:elefe_prenom][:Prenom]
      el = Elefe.new( :nom => params[:elefe_nom][:Nom], :prenom => params[:elefe_prenom][:Prenom], :ville_entrainement => params[:presence][:cour_id] )
      c = Cour.find_by(:id => params[:presence][:cour_id])
      el.cours << c
      el.save
      redirect_back(fallback_location: :back)

    elsif params[:commit] == "Valider"
      @cour = Cour.find(params[:presence][:cour_id])
      @eleves_cour = @cour.eleves
      date = params[:presence]['datecours(1i)']+"-"+params[:presence]['datecours(2i)']+"-"+params[:presence]['datecours(3i)']
      date = date.to_date
      @presence = Presence.new(:datecours => date)

      @eleves_cour.each_with_index do |elefe, i|
        j = i.to_s
        @etat = params[:etat][j]
        @presence.etats << elefe.etats.create(etat: @etat)
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
      format.html { redirect_to root_path, notice: 'Cette date a bien été supprimée du tableau.' }
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
