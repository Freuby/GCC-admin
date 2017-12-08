class ApplicationMailer < ActionMailer::Base
  default from: 'from@grupoculturacapoeira.com'
  layout 'paiement_mailer/paiemnt_email'

  def paiement_email(user)
    @user = user
    mail(to: @user.email, subject: 'Votre facture')
  end

end
