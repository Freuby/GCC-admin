class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  before_action :set_constants
  before_action :set_current_eleve
  before_action :set_data

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

 private

  def set_constants
    @typ_cours = ["adultes", "enfants", "mixte"]
    @grades_adultes = ["Enfant débutant", "Enfant gradé", "Adulte Débutant", "1e corda", "2e corda", "3e corda", "4e corda", "5e corda", "Estagiário", "Monitor", "Instrutor", "Contramestre", "Mestre Edificador", "Mestre Digno"]
    @reglements = ["Espèces", "Chèque", "Tickets CAF", "Chèques vacances ANCV", "Autres"]
    @GCC_connait = ["Démonstration","Moteur de recherche internet", "Site", "Affiche/Flyer", "Par un ami", "Vidéo", "Autre"]
    @tarif = [190, 230, 140, 180, 0]
    t = Time.now
    @date_fondation = Time.new(2001, 9, 1)
    if t.month > 8  && t.month < 13
      @sept_courant = Time.new(t.year, 9, 1)
      @aout_courant = Time.new(t.year+1, 8, 31)
    else
      @sept_courant = Time.new(t.year-1, 9, 1)
      @aout_courant = Time.new(t.year, 8, 31)
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
      if @eleves_current_user[0].signature == false
        @total_cotis = @eleves_current_user[0].prix
      else
        @total_cotis = 0
      end
      @eleves_current_user.each.with_index do |el, i|
        if el.signature == false
          if i ==1 || i > 2
            @total_cotis = @total_cotis + (el.prix / 2) if el.prix != nil
          end
        end
      end
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
        firstpart = current_user.email.split('@')
        secondpart = firstpart[1].split('.')
        @ville = firstpart[0]
        @jour = secondpart[0]
        @cours = Cour.where(:nomvil => @ville.capitalize, :jour => @jour, :updated_at => @sept_courant..@aout_courant).all
        @eleves = @cours.collect { |c| c.eleves }.flatten
      end
    end
  end
  end

end
