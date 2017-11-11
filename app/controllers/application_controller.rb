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
    @reglements = ["Espèces", "Chèque", "Tickets CAF", "ANCV", "Autres"]
    t = Time.now
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
    @batigrados = Batigrado.where(:updated_at => @sept_courant..@aout_courant).all
    @repasgccs = Repasgcc.where(:updated_at => @sept_courant..@aout_courant).all
    @cours = Cour.all
    @eleves = Elefe.where(:updated_at => @sept_courant..@aout_courant).all
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
    end
  end

end
