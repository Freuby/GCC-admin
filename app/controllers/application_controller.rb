class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  before_action :set_constants
  before_action :set_current_eleve
  before_action :set_data
  before_action :set_caddy

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # GET /panier
  def panier
    if current_user.commandes.where(sold: false).all.any?
      el = current_user.eleves.sort_by { |el| el.prix }.reverse
      if el.count > 1
        if el.second.prix != el.second.commandes.last.montant
          @txt_fam = "Enlever option famille"
        else
          @txt_fam = "Option famille"
        end
      else
        @txt_fam = ""
      end
    else
      @txt_fam = ""
    end
  end

  # POST /panier_valid
  # POST /panier_valid.json
  def panier_valid
  balance = 0
    if params[:commit] == 'Option famille'
      current_user.eleves.sort_by { |el| el.prix }.reverse.each.with_index do |ele, i|
        if i == 1 && ele.commandes.exists?
          nouv_montant = ele.prix / 2
          ele.commandes.last.update(montant: nouv_montant)
          balance = balance - nouv_montant if ele.commandes.last.sold == true
        end
        if i == 2 && ele.commandes.exists?
          ele.commandes.last.update(montant: 0)
          balance = balance - ele.prix if ele.commandes.last.sold == true
        end
        if i > 2 && ele.commandes.exists?
          nouv_montant = ele.prix / 2
          ele.commandes.last.update(montant: nouv_montant)
          balance = balance - nouv_montant if ele.commandes.last.sold == true
        end
      end
      if balance != 0
        current_user.commandes << Commande.create(description: "Balance sur soldes précédents", montant: balance)
      end
      redirect_to panier_path, notice: 'Option famille appliquée avec succès.'
    end

    if params[:commit] == 'Enlever option famille'
      current_user.eleves.sort_by { |el| el.prix }.reverse.each.with_index do |ele, i|
        if i == 1 && ele.commandes.exists?
          nouv_montant = ele.prix / 2
          ele.commandes.last.update(montant: ele.prix)
          balance = balance + nouv_montant if ele.commandes.last.sold == true
        end
        if i == 2 && ele.commandes.exists?
          ele.commandes.last.update(montant: ele.prix)
          balance = balance + ele.prix if ele.commandes.last.sold == true
        end
        if i > 2 && ele.commandes.exists?
          nouv_montant = ele.prix / 2
          ele.commandes.last.update(montant: ele.prix)
          balance = balance + nouv_montant if ele.commandes.last.sold == true
        end
      end
      if balance != 0
        current_user.commandes << Commande.create(description: "Balance sur soldes précédents", montant: balance)
      end
      redirect_to panier_path, notice: 'Option famille retirée avec succès.'
    end

    if params[:commit] == 'Régler vos commandes'
      @paiement = Paiement.new(paiement_params)
      @paiement.commandes << current_user.commandes.where(:sold => false).all
      current_user.paiements << @paiement
      respond_to do |format|
        if @paiement.save
          @paiement.commandes.each do |com|
            com.update(sold: true)
          end
          format.html { redirect_to panier_confirm_path(:pid => @paiement.id), notice: 'Votre réglement a bien été enregistré.' }
          format.json { render :panier, status: :created, location: panier_confirm_path }
        else
          format.html { render :panier_confirm }
          format.json { render json: @paiement.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  #GET /panier_confirm
  def panier_confirm
    @paiement = Paiement.find(params[:pid])

  end

  # POST /valide
  def valide
    @p = Paiement.find(params[:paiement])
    @p.update(:valide => true)
    redirect_to root_path
  end

 private

  def set_constants
    @mail_grupo = "marcelo@grupoculturacapoeira.com"
    @typ_cours = ["adultes", "enfants", "mixte"]
    @grades_adultes = ["Enfant débutant", "Enfant gradé", "Adulte Débutant", "1e corda", "2e corda", "3e corda", "4e corda", "5e corda", "Estagiário", "Monitor", "Instrutor", "Contramestre", "Mestre Edificador", "Mestre Digno"]
    @reglements = ["Espèces", "Chèque", "Tickets CAF", "Chèques vacances ANCV", "Autres"]
    @GCC_connait = ["Démonstration","Moteur de recherche internet", "Site", "Affiche/Flyer", "Par un ami", "Vidéo", "Autre"]
    @tarif = [190, 230, 140, 180, 0]
    t = Time.now
    @date_fondation = Date.new(2001, 9, 1)
    if t.month > 8  && t.month < 13
      @sept_courant = Date.new(t.year, 9, 1)
      @aout_courant = Date.new(t.year+1, 8, 31)
    else
      @sept_courant = Date.new(t.year-1, 9, 1)
      @aout_courant = Date.new(t.year, 8, 31)
    end
  end

  def set_current_eleve
    if current_user
      @current_elefe = Elefe.where(:user_id => current_user.id).first
    end
  end

  def set_data
  if current_user
    @All_Eleves = Elefe.all
    @batigrados = Batigrado.where(:updated_at => @sept_courant..@aout_courant).all
    @repasgccs = Repasgcc.where(:updated_at => @sept_courant..@aout_courant).all
    @cours = Cour.all
    @eleves = Elefe.where(:updated_at => @sept_courant..@aout_courant).all
    if current_user.admin == 0 && @eleves.where(:user_id => current_user.id).exists?
      @eleves_current_user = @eleves.where(:user_id => current_user.id).all
      @eleves_current_user = @eleves_current_user.sort_by{ |p| p.prix }.reverse
    end
    @archive_eleves = Elefe.where(:created_at => @date_fondation..@sept_courant, :updated_at => @date_fondation..@sept_courant).all
    @enseignants = Enseignant.all
    @presences_all = Presence.where(:created_at => @sept_courant..@aout_courant).all
    @com_batigrados = ComBatigrado.where(:created_at => @sept_courant..@aout_courant).all
    @ticket_repas = TicketRepa.where(:created_at => @sept_courant..@aout_courant).all
    if current_user
      if current_user.admin == 2
        @prenom_ens = current_user.email.split('@')
        @enseignant = @enseignants.find_by(:prenom => @prenom_ens[0].capitalize)
        @cours = @enseignant.cours.where(:updated_at => @sept_courant..@aout_courant).all
        @eleves = @cours.collect { |c| c.eleves }.flatten
      end
      if current_user.admin == 3
        @cours = Cour.where(:mailpres => current_user.email, :updated_at => @sept_courant..@aout_courant).all
        @eleves = @cours.collect { |c| c.eleves }.flatten
      end
    end
  end
  end

  def set_caddy
    @sold = 0
    if current_user
      current_user.commandes.each do |com|
        if com.sold != true && com.montant != nil
          @sold = @sold + com.montant
        end
      end
    end
  end

  def paiement_params
    params.require(:paiement).permit(:montant, :mode_paie, :user_id, :valide)
  end

end
