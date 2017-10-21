class TicketRepasController < ApplicationController
  before_action :set_ticket_repa, only: [:show, :edit, :update, :destroy]

  # GET /ticket_repas
  # GET /ticket_repas.json
  def index
    @repasgcc = Repasgcc.last
    @elefe = Elefe.where(:user_id => current_user.id).first
    @ticket_repas = TicketRepa.where(:elefe_id => @elefe.id).all
    @ticket_repas_all = TicketRepa.all
    @eleves = Elefe.all
    @cours = Cour.all
  end

  # GET /ticket_repas/1
  # GET /ticket_repas/1.json
  def show
    @repasgcc = Repasgcc.last
    @total = @ticket_repa.qte1*@repasgcc.r1e_tarif + @ticket_repa.qte2*@repasgcc.r2e_tarif + @ticket_repa.qta1*@repasgcc.r1a_tarif + @ticket_repa.qta2*@repasgcc.r2a_tarif
  end

  # GET /ticket_repas/new
  def new
    @ticket_repa = TicketRepa.new
    @repasgcc = Repasgcc.last
    @elefe = Elefe.where(:user_id => current_user.id).first
  end

  # GET /ticket_repas/1/edit
  def edit
    @repasgcc = Repasgcc.last
    @elefe = Elefe.where(:user_id => current_user.id).first
  end

  # POST /ticket_repas
  # POST /ticket_repas.json
  def create
    @repasgcc = Repasgcc.last
    @elefe = Elefe.where(:user_id => current_user.id).first
    @ticket_repa = TicketRepa.new(ticket_repa_params)

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

  # PATCH/PUT /ticket_repas/1
  # PATCH/PUT /ticket_repas/1.json
  def update
    @repasgcc = Repasgcc.last
    @elefe = Elefe.where(:user_id => current_user.id).first
    respond_to do |format|
      if @ticket_repa.update(ticket_repa_params)
        format.html { redirect_to @ticket_repa, notice: 'Votre demande de ticket a bien été modifiée.' }
        format.json { render :show, status: :ok, location: @ticket_repa }
      else
        format.html { render :edit }
        format.json { render json: @ticket_repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_repas/1
  # DELETE /ticket_repas/1.json
  def destroy
    @repasgcc = Repasgcc.last
    @ticket_repa.destroy
    respond_to do |format|
      format.html { redirect_to ticket_repas_url, notice: 'Votre demande de ticket a bien été supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_repa
      @repasgcc = Repasgcc.last
      @ticket_repa = TicketRepa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_repa_params
      params.require(:ticket_repa).permit(:qte1, :qte2, :qta1, :qta2, :elefe_id, :repasgcc_id)
    end
end
