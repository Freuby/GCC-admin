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
      format.csv { send_data @com_batigrados.to_csv }
      format.xls do # { send_data @com_batigrados.to_csv(col_sep: "\t") }
        @batigrado = @batigrados.find(params[:bat])
        render :xls => "index"
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
      #if @eleves_all.exists?
      #  nompren = params[:resp][:nom]
      #  nompren = nompren.split(', ')
      #  @elefe = @eleves_all.where(:nom => nompren[0], :prenom => nompren[1])
      #  @com_batigrado = ComBatigrado.new
      #  b = @batigrados.find(@even_sel)
      #  nom = nompren[0]
      #  prenom = nompren[1]
      # else
        @gcc = false
        @nom_ext = params[:resp][:nom]
        @prenom_ext = params[:resp][:prenom]
        @grupo = "Grupo Cultura Capoeira" if params[:resp][:nom_grupo] == "Grupo Cultura Capoeira"
        @grupo = params[:resp][:grupo] if params[:resp][:nom_grupo] == "autre"
        @com_batigrado = ComBatigrado.new
        b = @batigrados.find(@even_sel)
        nom = @nom_ext
        prenom = @prenom_ext
      #end
    end
    # verif pas déjà com_batigrado meme eleve meme batigrado
    if !@com_batigrados.find_by(batigrado_id: @even_sel, nom: nom, prenom: prenom )
    else
      flash[:alert] = "Il existe déjà une commande à votre nom pour ce batigrado"
      redirect_back(fallback_location: :back)
    end
  end

  # GET /com_batigrados/1/edit
  def edit
    @eleves_all = @eleves.where(:user_id => current_user.id).all
  end

  # POST /com_batigrados
  # POST /com_batigrados.json
  def create
    b = @batigrados.find(params[:even_sel])
    if params[:com_batigrado][:bati2] == "1" # CREER UN COM_BATIGRADO DU BATIGRADO ASSOCIE
        basso = @batigrados.find(b.batiasso_id)
        basso.com_batigrados << ComBatigrado.create(nom: params[:com_batigrado][:nom], prenom: params[:com_batigrado][:prenom],nom_grupo: params[:com_batigrado][:nom_grupo], email: params[:com_batigrado][:email], ttshirt: params[:com_batigrado][:ttshirt], tpant: params[:com_batigrado][:tpant], bati1: params[:com_batigrado][:bati1], bati2: params[:com_batigrado][:bati2], gradup: false, repas1: params[:arepas1], repas2: params[:arepas2], repas3: params[:arepas3], soiree: params[:asoiree], montant: basso.tarif2+(params[:asoirpay] == '1' ? 1 : 0)*( basso.tar_soiree ? basso.tar_soiree : 0 ), hbesoin: params[:ahbesoin], hprop: params[:ahprop], hadresse: params[:ahadresse], htelephone: params[:ahtelephone], gradactu: params[:com_batigrado][:gradactu], soirpay: params[:asoirpay], remarque: params[:aremarque],repenfvege: params[:arepenfvege], repenf: params[:arepenf], repadvege: params[:arepadvege], repad: params[:arepad])
        current_user.commandes << Commande.create(description: basso.titre, montant: basso.tarif2+(params[:asoirpay] == '1' ? 1 : 0)*( basso.tar_soiree ? basso.tar_soiree : 0 ))
        @com_batigrado = ComBatigrado.last
        @com_batigrado.commandes << current_user.commandes.last
        # params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == '1' ? 1 : 0)*b.tarif1 + (params[:com_batigrado][:bati2] == '1' ? 1 : 0)*( b.tarif2 ? b.tarif2 : 0 )
    end
   # @eleves_all = @eleves.where(:user_id => current_user.id).all
   # @elefe = @eleves_all.where(:nom => params[:com_batigrado][:nom], :prenom => params[:com_batigrado][:prenom])

     # params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == '1' ? 1 : 0)*b.tarif1 + (params[:com_batigrado][:bati2] == '1' ? 1 : 0)*( b.tarif2 ? b.tarif2 : 0 )
     # if @elefe.exists? #Eleve du GCC
     #   b.com_batigrados << @elefe[0].com_batigrados.create(com_batigrado_params)
     #   current_user.commandes << Commande.create(description: b.titre, montant: params[:com_batigrado][:montant])
      #  @com_batigrado = ComBatigrado.last
      #  @com_batigrado.commandes << current_user.commandes.last
      #  respond_to do |format|
      #  if @com_batigrados
       #     format.html { redirect_to @com_batigrado, notice: "Votre demande d'inscription a bien été enregistrée." }
       #     format.json { render :show, status: :created, location: @com_batigrado }
       #   else
       #     format.html { render :new }
       #     format.json { render json: @com_batigrado.errors, status: :unprocessable_entity }
       #   end
       # end
     # else  #Eleve exterieur
        # params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == '1' ? 1 : 0)*b.tarif_ext
        params[:com_batigrado][:montant] = b.tarif1 + (params[:com_batigrado][:soirpay] == '1' ? 1 : 0)*( b.tar_soiree ? b.tar_soiree : 0 )
        b.com_batigrados << ComBatigrado.create(com_batigrado_params)
        current_user.commandes << Commande.create(description: b.titre, montant: b.tarif1 + (params[:com_batigrado][:soirpay] == '1' ? 1 : 0)*( b.tar_soiree ? b.tar_soiree : 0 ))
        @com_batigrado = ComBatigrado.last
        @com_batigrado.commandes << current_user.commandes.last
        respond_to do |format|
          if @com_batigrado.save
            format.html { redirect_to @com_batigrado, notice: "Votre demande d'inscription a bien été enregistrée." }
            format.json { render :show, status: :created, location: @com_batigrado }
          else
            format.html { render :new }
            format.json { render json: @com_batigrado.errors, status: :unprocessable_entity }
          end
        end
     # end
  end

  # PATCH/PUT /com_batigrados/1
  # PATCH/PUT /com_batigrados/1.json
  def update
    @eleves_all = @eleves.where(:user_id => current_user.id).all
    @elefe = @eleves_all.where(:nom => params[:com_batigrado][:nom], :prenom => params[:com_batigrado][:prenom])
    b = @batigrados.find(params[:even_sel])

    if @elefe.exists? #Eleve du GCC
      params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == '1' ? 1 : 0)*b.tarif1 + (params[:com_batigrado][:bati2] == '1' ? 1 : 0)*( b.tarif2 ? b.tarif2 : 0 )
    else  #Eleve exterieur
      params[:com_batigrado][:montant] = (params[:com_batigrado][:bati1] == '1' ? 1 : 0)*b.tarif_ext
    end
    respond_to do |format|
      if @com_batigrado.update(com_batigrado_params)
        @com_batigrado.commandes.first.update(montant: params[:com_batigrado][:montant])
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
      params.require(:com_batigrado).permit(:nom, :prenom, :nom_grupo, :email, :ttshirt, :tpant, :bati1, :bati2, :gradup, :repas1, :repas2, :repas3, :soiree, :montant, :reglt, :hbesoin, :hprop, :hadresse, :htelephone, :gradactu, :soirpay, :ageactu, :remarque,:repenfvege, :repenf, :repadvege, :repad)
    end
end
