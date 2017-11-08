class ElevesController < ApplicationController
  before_action :set_elefe, only: [:show, :edit, :update, :destroy, :valid]
  before_action :set_cours, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /eleves
  # GET /eleves.json
  def index
    @eleves_cu = @eleves.where(:user_id => current_user.id).all
  end

  # GET /eleves/1
  # GET /eleves/1.json
  def show
  end

  # GET /eleves/new
  def new
    @elefe = Elefe.new
  end

  # GET /eleves/1/edit
  def edit
  end

  # POST /eleves
  # POST /eleves.json
  def create
    #info_ville = params[:elefe][:info_ville].join.to_i
    #params[:elefe][:info_ville] = info_ville

    @elefe = Elefe.new(elefe_params)
    cour = Cour.where(:id => params[:elefe][:ville_entrainement])
    @elefe.cours << cour
    u = current_user
    u.eleves << @elefe

    respond_to do |format|
      if @elefe.save
        format.html { redirect_to @elefe, notice: 'La fiche élève a bien été créée.' }
        format.json { render :show, status: :created, location: @elefe }
      else
        format.html { render :new }
        format.json { render json: @elefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eleves/1
  # PATCH/PUT /eleves/1.json
  def update
    cour = Cour.find_by(:id => params[:elefe][:ville_entrainement])
    cours = @elefe.cours
    if !cours.detect { |b| b.id == cour.id }
      @elefe.cours << cour
    end
    respond_to do |format|
      if @elefe.update(elefe_params)
        format.html { redirect_to @elefe, notice: 'La fiche élève a bien été modifiée.' }
        format.json { render :show, status: :ok, location: @elefe }
      else
        format.html { render :edit }
        format.json { render json: @elefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleves/1
  # DELETE /eleves/1.json
  def destroy
    @elefe.destroy
    respond_to do |format|
      format.html { redirect_to eleves_url, notice: 'La fiche élève a bien été effacée.' }
      format.json { head :no_content }
    end
  end

  # GET /eleves/1/valid
  def valid
    session[:return_to] ||= request.referer
    if @elefe.signature == false || !@elefe.signature
      @elefe.signature = true
      respond_to do |format|
        if @elefe.save
          format.html { redirect_to session.delete(:return_to), notice: 'La fiche élève a bien été validée.' }
        else
          format.html { redirect_to session.delete(:return_to), notice: "Une erreur est survenue, la fiche élève n'a pas pu être validée." }
        end
      end
    else
        @elefe.signature = nil
        respond_to do |format|
          if @elefe.save
            format.html { redirect_to session.delete(:return_to), notice: "L'élève a bien été désinscrit." }
          else
            format.html { redirect_to session.delete(:return_to), notice: "Une erreur est survenue, l'élève n'a pas pu être désinscrit." }
          end
        end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elefe
      @elefe = Elefe.find(params[:id])
    end

    def set_cours
      @list_cours = Array []
      @cours.each do |a|
        if a.typcours == 0
          tc = "Adultes"
        elsif a.typcours == 1
          tc = "Enfants"
        elsif a.typcours == 2
          tc = "Mixte"
        end
        @list_cours << a.nomvil+' '+tc
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elefe_params
      params.require(:elefe).permit(:nom, :prenom, :rue, :cp, :ville, :email, :date_naissance, :tel_mobile, :tel_fixe, :graduation, :ville_entrainement, :a_signaler, :urgence_nom, :urgence_prenom, :urgence_parentee, :urgence_tel, :soin_moi, :soin_tutelle, :info_ville, :gcc_connait, :parentee, :prix, :reglement, :signature, :photo, :certifmed)
    end

    def cour_params
      params.require(:cour).permit(:nomvil, :adresse, :cp, :telephon, :typcours, :jour, :dateh, :duree, :enseignant_id, :respcom_id, :resppres_id)
    end

end
