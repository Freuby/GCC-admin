class TicketRepasController < ApplicationController
  before_action :set_ticket_repa, only: [:show, :edit, :update, :destroy]

  # GET /ticket_repas
  # GET /ticket_repas.json
  def index
    @repasgcc = @repasgccs.last
    if current_user.admin == 0
    @elefe = @eleves.where(:user_id => current_user.id).first
    end
    if @elefe
      @ticket_repas_el = @ticket_repas.where(:elefe_id => @elefe.id).all
    else
      @ticket_repas_el = nil
    end
    @ticket_repas_all = @ticket_repas
  end

  # GET /ticket_repas/1
  # GET /ticket_repas/1.json
  def show
    @repasgcc = @repasgccs.last
    @total = @ticket_repa.qte1*@repasgcc.r1e_tarif + @ticket_repa.qte2*@repasgcc.r2e_tarif + @ticket_repa.qta1*@repasgcc.r1a_tarif + @ticket_repa.qta2*@repasgcc.r2a_tarif
  end

  # GET /ticket_repas/new
  def new
    @ticket_repa = TicketRepa.new
    @repasgcc = @repasgccs.last
    @elefe = @eleves.where(:user_id => current_user.id).first
  end

  # GET /ticket_repas/1/edit
  def edit
    @repasgcc = @repasgccs.last
    @elefe = @eleves.where(:user_id => current_user.id).first
  end

  # POST /ticket_repas
  # POST /ticket_repas.json
  def create
    if ( params[:ticket_repa][:qte1] + params[:ticket_repa][:qte2] + params[:ticket_repa][:qta1] + params[:ticket_repa][:qta2] ).to_i == 0
      flash[:notice] = 'Vous devez réserver au moins un repas'
      redirect_back(fallback_location: root_path)
    else
      @repasgcc = @repasgccs.last
      @elefe = @eleves.where(:user_id => current_user.id).first
      @ticket_repa = TicketRepa.new(ticket_repa_params)
      @total = @ticket_repa.qte1*@repasgcc.r1e_tarif + @ticket_repa.qte2*@repasgcc.r2e_tarif + @ticket_repa.qta1*@repasgcc.r1a_tarif + @ticket_repa.qta2*@repasgcc.r2a_tarif
      current_user.commandes << Commande.create(description: @repasgcc.titre, montant: @total)
      @ticket_repa.commandes << current_user.commandes.last
      respond_to do |format|
        if @ticket_repa.save
          format.html { redirect_to @ticket_repa, notice: 'Merci, vos tickets sont en préparation.' }
          format.json { render :show, status: :created, location: @ticket_repa }
        else
          format.html { render :new }
          format.json { render json: @ticket_repa.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /ticket_repas/1
  # PATCH/PUT /ticket_repas/1.json
  def update
    if ( params[:ticket_repa][:qte1] + params[:ticket_repa][:qte2] + params[:ticket_repa][:qta1] + params[:ticket_repa][:qta2] ).to_i == 0
      flash[:notice] = 'Vous devez réserver au moins un repas'
      redirect_back(fallback_location: root_path)
    else
      @repasgcc = @repasgccs.last
      @elefe = @eleves.where(:user_id => current_user.id).first
      respond_to do |format|
        if @ticket_repa.update(ticket_repa_params)
          @total = @ticket_repa.qte1*@repasgcc.r1e_tarif + @ticket_repa.qte2*@repasgcc.r2e_tarif + @ticket_repa.qta1*@repasgcc.r1a_tarif + @ticket_repa.qta2*@repasgcc.r2a_tarif
          puts "*********$*********$********"
          puts @total
          @ticket_repa.commandes.first.update(montant: @total)
          format.html { redirect_to @ticket_repa, notice: 'Votre demande de ticket a bien été modifiée.' }
          format.json { render :show, status: :ok, location: @ticket_repa }
        else
          format.html { render :edit }
          format.json { render json: @ticket_repa.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /ticket_repas/1
  # DELETE /ticket_repas/1.json
  def destroy
    @repasgcc = @repasgccs.last
    @ticket_repa.destroy
    respond_to do |format|
      format.html { redirect_to ticket_repas_url, notice: 'Votre demande de ticket a bien été supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_repa
      @repasgcc = @repasgccs.last
      @ticket_repa = @ticket_repas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_repa_params
      params.require(:ticket_repa).permit(:qte1, :qte2, :qta1, :qta2, :elefe_id, :repasgcc_id)
    end
end
