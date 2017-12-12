class ApplicationMailer < ActionMailer::Base

  before_action :set_locale
  default from: 'from@grupoculturacapoeira.com'
  layout 'paiement_mailer/paiemnt_email'

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def paiement_email(user)
    @user = user
    mail(to: @user.email, subject: 'Votre facture')
  end

end
