class ComBatigradosController < ApplicationController
  before_action :set_com_batigrado, only: [:show, :edit, :update, :destroy]

  # GET /com_batigrados
  # GET /com_batigrados.json
  def index
    @com_batigrados_el = @com_batigrados.where(:email => current_user.email).all
    respond_to do |format|
      format.html { render :index }
      format.pdf do
        @batigrado = @batigrados.find(params[:bat])
        render :pdf => "index", :layout => 'pdf.html', :orientation =>'Landscape'
      end
    end
  end

  # GET /com_batigrados/1
  # GET /com_batigrados/1.json
  def show
    @batigrado = @batigrados.find(@com_batigrado.batigrado_id)
  end

  # GET /com_batigrados/new
  def new
    @eleves_all = @eleves.where(:user_id => current_user.id).all
    if !params[:resp].blank?
      @even_sel = params[:resp][:sel_bat]
      if @eleves_all.exists?
        nompren = params[:resp][:nom]
        nompren = nompren.split(', ')
        @elefe = @eleves_all.where(:nom => nompren[0], :prenom => nompren[1])
        @com_batigrado = ComBatigrado.new
        b = @batigrados.find(@even_sel)
      else
        @nom_ext = params[:resp][:nom]
        @prenom_ext = params[:resp][:prenom]
        @grupo_ext = params[:resp][:nom_grupo]
        @com_batigrado = ComBatigrado.new
        b = @batigrados.find(@even_sel)
      end
    end
  end

  # GET /com_batigrados/1/edit
  def edit
    @eleves_all = @eleves.where(:user_id => current_user.id).all
  end

  # POST /com_batigrados
  # POST /com_batigrados.json
  def create
    @eleves_all = @eleves.where(:user_id => current_user.id).all
    @elefe = @eleves_all.where(:nom => params[:com_batigrado][:nom], :prenom => params[:com_batigrado][:prenom])
    b = @batigrados.find(params[:com_batigrado][:even_sel])
    params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == true ? 1 : 0)*b.tarif1 + (params[:com_batigrado][:bati2] == true ? 1 : 0)*( b.tarif2 ? b.tarif2 : 0 )
    if @elefe.exists? #Eleve du GCC
      b.com_batigrados << @elefe[0].com_batigrados.create(com_batigrado_params)
      @com_batigrado = ComBatigrado.last
      respond_to do |format|
      if @com_batigrados
          format.html { redirect_to @com_batigrado, notice: "Votre demande d'inscription a bien été enregistrée." }
          format.json { render :show, status: :created, location: @com_batigrado }
        else
          format.html { render :new }
          format.json { render json: @com_batigrado.errors, status: :unprocessable_entity }
        end
      end
    else  #Eleve exterieur
      params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == true ? 1 : 0)*b.tarif_ext
      b.com_batigrados << ComBatigrado.create(com_batigrado_params)
      @com_batigrado = ComBatigrado.last
      respond_to do |format|
        if @com_batigrados
          format.html { redirect_to @com_batigrado, notice: "Votre demande d'inscription a bien été enregistrée." }
          format.json { render :show, status: :created, location: @com_batigrado }
        else
          format.html { render :new }
          format.json { render json: @com_batigrado.errors, status: :unprocessable_entity }
        end
      end
    end


  end

  # PATCH/PUT /com_batigrados/1
  # PATCH/PUT /com_batigrados/1.json
  def update
    @eleves_all = @eleves.where(:user_id => current_user.id).all
    @elefe = @eleves_all.where(:nom => params[:com_batigrado][:nom], :prenom => params[:com_batigrado][:prenom])
    b = @batigrados.find(params[:com_batigrado][:even_sel])
    if @elefe.exists? #Eleve du GCC
      params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == '1' ? 1 : 0)*b.tarif1 + (params[:com_batigrado][:bati2] == '1' ? 1 : 0)*( b.tarif2 ? b.tarif2 : 0 )
    else  #Eleve exterieur
      params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == true ? 1 : 0)*b.tarif_ext
    end
    respond_to do |format|
      if @com_batigrado.update(com_batigrado_params)
        format.html { redirect_to @com_batigrado, notice: "Votre demande d'inscription a bien été modifiée." }
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
      format.html { redirect_to com_batigrados_url, notice: "Votre demande d'inscription a bien été effacée." }
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
