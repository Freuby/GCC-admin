class CoursController < ApplicationController
  before_action :set_cour, only: [:show, :edit, :update, :destroy]

  # GET /cours
  # GET /cours.json
  def index

  end

  # GET /cours/1
  # GET /cours/1.json
  def show
    set_enseignant(@cour.enseignant_id)
    @mail_ref = User.find_by(:email => I18n.transliterate(@enseignant.prenom.downcase) + '@' + I18n.transliterate(@enseignant.nom.downcase) + '.com')
    if !@mail_ref
      @mail_ref = "introuvable"
    else
      @mail_ref = @mail_ref.email
    end
  end

  # GET /cours/new
  def new
    @cour = Cour.new
  end

  # GET /cours/1/edit
  def edit

  end

  # POST /cours
  # POST /cours.json
  def create
    @cour = Cour.new(cour_params)
    set_enseignant(@cour.enseignant_id)
    @email = I18n.transliterate(@enseignant.prenom) + '@' + I18n.transliterate(@enseignant.nom) + '.com'
    @email2 = params[:cour][:mailpres]
    @users = User.all
    if !@users.where(:email => @email).exists?
      @user = User.new(:email => @email, :password => '1234567', :admin => 2)
      @user.save
    end
    if !@users.where(:email => @email2).exists?
      @user = User.new(:email => @email2, :password => '1234567', :admin => 3)
      @user.save
    end

    respond_to do |format|
      if @cour.save
        format.html { redirect_to @cour, notice: 'Le cours a bien été ajouté.' }
        format.json { render :show, status: :created, location: @cour }
      else
        format.html { render :new }
        format.json { render json: @cour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cours/1
  # PATCH/PUT /cours/1.json
  def update
    @email2 = params[:cour][:mailpres]
    @users = User.all
    if !@users.where(:email => @email2).exists?
      @user = User.new(:email => @email2, :password => '1234567', :admin => 3)
      @user.save
    end
    respond_to do |format|
      if @cour.update(cour_params)
        format.html { redirect_to @cour, notice: 'Le cours a bien été modifié.' }
        format.json { render :show, status: :ok, location: @cour }
      else
        format.html { render :edit }
        format.json { render json: @cour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cours/1
  # DELETE /cours/1.json
  def destroy
    @cour.destroy
    respond_to do |format|
      format.html { redirect_to cours_url, notice: 'Le cours a bien été supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cour
      @cour = Cour.find(params[:id])
    end

    def set_enseignant(ens_id)
      @enseignant = Enseignant.find(ens_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cour_params
      params.require(:cour).permit(:nomvil, :adresse, :cp, :telephon, :typcours, :jour, :dateh, :duree, :enseignant_id, :acb, :mailpres)
    end

    def enseignant_params
      params.require(:enseignant).permit(:nom, :prenom, :graduation)
    end
end
