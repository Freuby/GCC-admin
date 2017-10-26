class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_constant
  before_action :set_current_eleve

 private

  def set_constant
    @grades_adultes = ["Enfant débutant", "Enfant gradé", "Débutant", "1e corda", "2e corda", "3e corda", "4e corda", "5e corda", "Estagiário", "Monitor", "Instrutor", "Contramestre", "Mestre Edificador", "Mestre Digno"]
  end

  def set_current_eleve
    if current_user
      @current_elefe = Elefe.where(:user_id => current_user.id).first
    end
  end

end
