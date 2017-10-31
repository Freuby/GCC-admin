class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_constants
  before_action :set_current_eleve
  before_action :set_data

 private

  def set_constants
    @grades_adultes = ["Enfant débutant", "Enfant gradé", "Débutant", "1e corda", "2e corda", "3e corda", "4e corda", "5e corda", "Estagiário", "Monitor", "Instrutor", "Contramestre", "Mestre Edificador", "Mestre Digno"]
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
    @eleves = Elefe.where(:updated_at => @sept_courant..@aout_courant).all
    @batigrados = Batigrado.where(:updated_at => @sept_courant..@aout_courant).all
    @repasgccs = Repasgcc.where(:updated_at => @sept_courant..@aout_courant).all
    @cours = Cour.all
    @enseignants = Enseignant.all
    @presences_all = Presence.where(:created_at => @sept_courant..@aout_courant).all
    @com_batigrados = ComBatigrado.where(:created_at => @sept_courant..@aout_courant).all
    @ticket_repas = TicketRepa.where(:created_at => @sept_courant..@aout_courant).all
  end

end
