class ElevesController < ApplicationController
  before_action :set_elefe, only: [:show, :edit, :update, :destroy, :valid]
  before_action :set_cours, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  before_action :set_archive, only: [:index, :show, :create, :update]

  # GET /eleves
  # GET /eleves.json
  def index
    if current_user.admin == 0
      @eleves_cu = @eleves.where(:user_id => current_user.id).all
    end
  end

  # GET /eleves/1
  # GET /eleves/1.json
  def show
    @cours = Cour.all
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
    cour = Cour.find(params[:elefe][:ville_entrainement])
    u = current_user
    #info_ville = params[:elefe][:info_ville].join.to_i
    #params[:elefe][:info_ville] = info_ville
    # CAS DES FICHES EXISTANTES
    if @All_Eleves.exists?(:nom => params[:elefe][:nom], :prenom => params[:elefe][:prenom])
      @fiche_exist = @All_Eleves.find_by(:nom => params[:elefe][:nom], :prenom => params[:elefe][:prenom])
      params[:elefe][:info_ville] = params[:elefe][:info_ville].join(',') if params[:elefe][:info_ville] != nil
      params[:elefe][:prix] = @tarif[params[:elefe][:parentee].to_i] if params[:elefe][:parentee] != nil
      # Fusion de l'élève avec une fiche existante créée à partir des présences (officialisation)
      if !@fiche_exist.date_naissance
        puts "On update eleve existant"
        @elefe = @fiche_exist
        cours = @elefe.cours
        if !cours.detect { |b| b.id == cour.id }
          @elefe.cours << cour
        end
        u.eleves << @elefe
        respond_to do |format|
          if @elefe.update(elefe_params)
            format.html { redirect_to @elefe, notice: 'La fiche élève a bien été modifiée.' }
            format.json { render :show, status: :ok, location: @elefe }
          else
            format.html { render :edit }
            format.json { render json: @elefe.errors, status: :unprocessable_entity }
          end
        end
      else
     # Ne peut pas écraser une fiche existante
      redirect_back(fallback_location: :back, alert: 'Il existe déjà un élève inscrit avec le même nom et prénom. Peut-être pourriez-vous entrer un deuxième prénom pour vous différencier ?')
      end
    # CAS CLASSIQUE DE L'INSCRIPTION
    else
      params[:elefe][:info_ville] = params[:elefe][:info_ville].join(',') if params[:elefe][:info_ville] != nil
      params[:elefe][:prix] = @tarif[params[:elefe][:parentee].to_i] if params[:elefe][:parentee] != nil
      @elefe = Elefe.new(elefe_params)
      @elefe.cours << cour
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
  end

  # PATCH/PUT /eleves/1
  # PATCH/PUT /eleves/1.json
  def update
    params[:elefe][:info_ville] = params[:elefe][:info_ville].join(',') if params[:elefe][:info_ville] != nil
    params[:elefe][:prix] = @tarif[params[:elefe][:parentee].to_i] if params[:elefe][:parentee] != nil
    params[:elefe][:signature] = false
    cour = Cour.find_by(:id => params[:elefe][:ville_entrainement])
    cours = @elefe.cours
    if !cours.detect { |b| b.id == cour.id }
      @elefe.cours << cour
    end
    @elefe.update_attributes(:updated_at => Time.now)
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

  # GET /stateleve
  def stateleve

  end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive
      @archive_eleves = Elefe.where(:created_at => @date_fondation..@sept_courant, :updated_at => @date_fondation..@sept_courant).all
    end

    def set_elefe
      @elefe = Elefe.find(params[:id])
    end

    def set_cours
      @list_cours = Array []
      @cours_id = Array []
      @cours.each do |a|
        if a.typcours == 0
          tc = "Adultes"
        elsif a.typcours == 1
          tc = "Enfants"
        elsif a.typcours == 2
          tc = "Mixte"
        end
        @cours_id << a.id
        if a.acb == false
          @list_cours << a.nomvil+' '+tc+'*'
        else
          @list_cours << a.nomvil+' '+tc
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elefe_params
      params.require(:elefe).permit(:nom, :prenom, :rue, :cp, :ville, :email, :date_naissance, :tel_mobile, :tel_fixe, :graduation, :ville_entrainement, :a_signaler, :urgence_nom, :urgence_prenom, :urgence_parentee, :urgence_tel, :soin_moi, :soin_tutelle, :info_ville, :gcc_connait, :parentee, :prix, :reglement, :signature, :user_id, :photo, :certifmed)
    end

    def cour_params
      params.require(:cour).permit(:nomvil, :adresse, :cp, :telephon, :typcours, :jour, :dateh, :duree, :enseignant_id, :respcom_id, :resppres_id)
    end

end
