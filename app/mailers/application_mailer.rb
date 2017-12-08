class ApplicationMailer < ActionMailer::Base
  default from: 'from@grupoculturacapoeira.com'
  layout 'paiement_mailer/paiemnt_email'

  def paiement_email(user)
    # vers mon mail en attendant production réelle
    user = "frederic.reubrecht@gmail.com"
    @user = user
    mail(to: @user.email, subject: 'Votre facture')
  end

end
