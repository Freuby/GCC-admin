class PresencesController < ApplicationController
  before_action :set_presence, only: [:show, :edit, :update, :destroy]

  # POST /presencesel
  def presencesel
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
  end

  # POST /consulpres
  def consulpres
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
  end

  # GET /presences
  # GET /presences.json
  def index
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
    if params[:cour]
      cour = params[:cour]
      @cour = Cour.where(:id => params[:cour])
    else
      cour = params[:select][:cour]
      @cour = Cour.where(:id => params[:select][:cour])
    end
    @presences = @presences_all.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => cour).all
    @presence = @presences.last

    # Calcul du Total des Présents
    if @presence
    @ttp = Array []
    @presence.eleves.each.with_index do |elefe, i|
    a = 0
      @presences.each do |presence|
      if elefe.etats.find_by_presence_id(presence.id)
        if elefe.etats.find_by_presence_id(presence.id).etat === "P" || elefe.etats.find_by_presence_id(presence.id).etat === "M/B"
          a = a +1
        end
      end
      end
      @ttp[i] = a
    end

    # Calcul du Total des Absents
    @tta = Array []
    @presence.eleves.each.with_index do |elefe, i|
    a = 0
      @presences.each do |presence|
      if elefe.etats.find_by_presence_id(presence.id)
        if elefe.etats.find_by_presence_id(presence.id).etat === "A"
          a = a +1
        end
      end
      end
      @tta[i] = a
    end

    # Calcul des présents par date de cours
    @total = Array []
    @totalponct = Array []
    @presences.sort_by { |date| date.datecours }.each.with_index do |presence, i|
        a = 0
        b = 0

        presence.etats.each do |etat|
          if etat.etat === 'P' || etat.etat === 'M/B'
            a = a + 1
            if etat.ponctuel == true
            b = b + 1
            end
          end
        end
        @total[i] = a
        @totalponct[i] = b
    end
    end

  end

  # GET /prespdf
  def prespdf
    @presences = @presences_all.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => params[:cour]).all
    @presence = @presences.last

    # Calcul du Total des Présents
    if @presence
    @ttp = Array []
      @presence.eleves.each.with_index do |elefe, i|
      a = 0
        @presences.each do |presence|
          if elefe.etats.find_by_presence_id(presence.id)
            if elefe.etats.find_by_presence_id(presence.id).etat === "P" || elefe.etats.find_by_presence_id(presence.id).etat === "M/B"
              a = a +1
            end
          end
        end
        @ttp[i] = a
      end
    end

    # Calcul du Total des Absents
    @tta = Array []
    @presence.eleves.each.with_index do |elefe, i|
    a = 0
      @presences.each do |presence|
        if elefe.etats.find_by_presence_id(presence.id)
          if elefe.etats.find_by_presence_id(presence.id).etat === "A"
            a = a +1
          end
        end
      end
      @tta[i] = a
    end

    # Calcul des présents par date de cours
    @total = Array []
    @totalponct = Array []
    @presences.sort_by { |date| date.datecours }.each.with_index do |presence, i|
        a = 0
        b = 0
        presence.etats.each do |etat|
          if etat.etat === 'P' || etat.etat === 'M/B'
            a = a + 1
            if etat.ponctuel == true
            b = b + 1
            end
          end
        end
        @total[i] = a
        @totalponct[i] = b
    end

    respond_to do |format|
      format.html { render :index }
      format.pdf do
        render :pdf => "index", :layout => 'pdf.html', :orientation =>'Landscape'
      end
    end
  end

  # GET /presences/1
  # GET /presences/1.json
  def show
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
    @eleves_pres = @presence.eleves
    cour = @presence.cour_id
    @presences = @presences_all.includes(:eleves, :etats, :cour, :enseignant).where(:cour_id => cour).all
    @presence = @presences.last
    @cour = Cour.where(:id => @presence.cour_id)
  end

  # GET /presences/new
  def new
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
    if params[:cour]
      @cour = Cour.find_by(:id => params[:cour])
    else
      @cour = Cour.find_by(:id => params[:select][:cour])
    end
      @eleves_pres = Array[]
      @presence = Presence.new
      @eleves.each do |elefe|
      if elefe.cours.exists?(@cour.id) && !@eleves_pres.any? {|ep| ep == elefe }
          @eleves_pres << elefe
        end
      end
      @enseignants = Enseignant.all
      @pres_cour = @presences_all.where(:cour_id => @cour.id).all
      @dates_pres = Array []
      @pres_cour.each do |p|
        @dates_pres << p.datecours.strftime("%d/%m/%Y")
      end
  end

  # GET /presences/1/edit
  def edit
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
    @cour = @cours.find(@presences_all.find(params[:id]).cour_id)
    @eleves_pres = Array[]
      @eleves.each do |elefe|
        if elefe.cours.exists?(@cour.id) && !@eleves_pres.any? {|ep| ep == elefe }
            @eleves_pres << elefe
        end
      end
      @enseignants = Enseignant.all
      @pres_cour = @presences_all.where(:cour_id => @cour.id).all
      @dates_pres = Array []
      @pres_cour.each do |p|
        @dates_pres << p.datecours.strftime("%d/%m/%Y")
      end
  end

  # POST /presences
  # POST /presences.json
  def create
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
    if params[:commit] == "Ajouter l'élève"
      nompren = params[:elefe]
      nompren = nompren.split(', ')
      el = Elefe.find_by(:nom => nompren[0], :prenom => nompren[1])
      c = Cour.find_by(:id => params[:presence][:cour_id])
      cours = el.cours
      if !cours.detect { |b| b.id == c.id }
        el.cours << c
        el.save
      end
      redirect_to new_presence_path(:cour => params[:presence][:cour_id])

    elsif params[:commit] == "Enlever l'élève"
      nompren = params[:elefe]
      nompren = nompren.split(', ')
      el = Elefe.find_by(:nom => nompren[0], :prenom => nompren[1])
      c = Cour.find_by(:id => params[:presence][:cour_id])
      el.cours.delete(c)
      redirect_to new_presence_path(:cour => params[:presence][:cour_id])

    elsif params[:commit] == "Ajouter un nouvel élève"
      if !Elefe.find_by(:nom => params[:elefe_nom][:Nom], :prenom => params[:elefe_prenom][:Prenom])
        el = Elefe.new( :nom => params[:elefe_nom][:Nom], :prenom => params[:elefe_prenom][:Prenom], :rue => '-', :cp => '-', :ville =>'-', :tel_mobile => '-', :tel_fixe => '-', :urgence_nom => '-', :urgence_prenom => '-', :urgence_tel => '-', :ville_entrainement => params[:presence][:cour_id], :parentee => 5, :soin_moi => false )
        c = Cour.find_by(:id => params[:presence][:cour_id])
        el.cours << c
        el.save
        redirect_to new_presence_path(:cour => params[:presence][:cour_id])
      else
        flash[:notice] = "Attention: Il y a déjà un élève portant ce nom et prénom"
        redirect_to new_presence_path(:cour => params[:presence][:cour_id])
      end

    elsif params[:commit] == "Valider"
      @cour = Cour.find(params[:presence][:cour_id])
      @eleves_cour = @cour.eleves
      date = params[:presence][:datecours]
      date = date.to_date
      @presence = Presence.new(:datecours => date)

      @eleves_cour.each_with_index do |elefe, i|
        j = elefe.id.to_s
        @etat = params[:etat][j]
        @eid = elefe.id.to_s
        @ponctuel = params[:ponctuel][@eid]
        if @ponctuel == "1"
          @p = true
          @presences_all.where(:cour_id => @cour.id).each do |p| # toutes les présences de elefe de ce cours à ponctuel true
            elefe.etats.where(:presence_id => p.id).each do |et|
              et.update(ponctuel: true)
            end
          end
        else
          @p = false
          @presences_all.where(:cour_id => @cour.id).each do |p| # toutes les présences de elefe de ce cours à ponctuel false
            elefe.etats.where(:presence_id => p.id).each do |et|
              et.update(ponctuel: false)
            end
          end
        end
        @presence.etats << elefe.etats.create(etat: @etat, ponctuel: @p)
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
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
      if params[:commit] == "Ajouter l'élève"
      nompren = params[:elefe]
      nompren = nompren.split(', ')
      el = Elefe.find_by(:nom => nompren[0], :prenom => nompren[1])
      c = Cour.find_by(:id => params[:presence][:cour_id])
      cours = el.cours
      if !cours.detect { |b| b.id == c.id }
        el.cours << c
        el.save
      end
      redirect_to new_presence_path(:cour => params[:presence][:cour_id])

    elsif params[:commit] == "Enlever l'élève"
      nompren = params[:elefe]
      nompren = nompren.split(', ')
      el = Elefe.find_by(:nom => nompren[0], :prenom => nompren[1])
      c = Cour.find_by(:id => params[:presence][:cour_id])
      el.cours.delete(c)
      redirect_to new_presence_path(:cour => params[:presence][:cour_id])

    elsif params[:commit] == "Ajouter un nouvel élève"
      if !Elefe.find_by(:nom => params[:elefe_nom][:Nom], :prenom => params[:elefe_prenom][:Prenom])
        el = Elefe.new( :nom => params[:elefe_nom][:Nom], :prenom => params[:elefe_prenom][:Prenom], :rue => '-', :cp => '-', :ville =>'-', :tel_mobile => '-', :tel_fixe => '-', :urgence_nom => '-', :urgence_prenom => '-', :urgence_tel => '-', :ville_entrainement => params[:presence][:cour_id], :parentee => 5, :soin_moi => false )
        c = Cour.find_by(:id => params[:presence][:cour_id])
        el.cours << c
        el.save
        redirect_to new_presence_path(:cour => params[:presence][:cour_id])
      else
        flash[:notice] = "Attention: Il y a déjà un élève portant ce nom et prénom"
        redirect_to new_presence_path(:cour => params[:presence][:cour_id])
      end

    elsif params[:commit] == "Valider"
      @cour = Cour.find(params[:presence][:cour_id])
      @eleves_cour = @cour.eleves

      @eleves_cour.each_with_index do |elefe, i|
        j = elefe.id.to_s
        @etat = params[:etat][j]
        @eid = elefe.id.to_s
        @ponctuel = params[:ponctuel][@eid]
        if @ponctuel == "1"
          @p = true
          @presences_all.where(:cour_id => @cour.id).each do |p| # toutes les présences de elefe de ce cours à ponctuel true
            elefe.etats.where(:presence_id => p.id).each do |et|
              et.update(ponctuel: true)
            end
          end
        else
          @p = false
          @presences_all.where(:cour_id => @cour.id).each do |p| # toutes les présences de elefe de ce cours à ponctuel false
            elefe.etats.where(:presence_id => p.id).each do |et|
              et.update(ponctuel: false)
            end
          end
        end
        elefe.etats.where(:presence_id => @presence.id).each do |et|
          et.update(etat: @etat, ponctuel: @p)
        end
      end
      @presence.update(:etat => "", :cour_id => params[:presence][:cour_id].to_i, :enseignant_id => params[:presence][:enseignant_id].to_i)

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
  end

  # DELETE /presences/1
  # DELETE /presences/1.json
  def destroy
    if !@current_user || (@current_user.admin != 1 && @current_user.admin != 2 && @current_user.admin != 3)
      return head :forbidden
    end
    p = @presence
    @presence.destroy
    respond_to do |format|
      format.html { redirect_to presences_path(:cour => p.cour_id), notice: 'Cette date a bien été supprimée du tableau.' }
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
