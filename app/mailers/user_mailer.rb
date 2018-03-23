class UserMailer < ApplicationMailer
  default from: 'from@grupoculturacapoeira.com'

  def paiement_email(user, pj)
    @user_fact = user
    @elefe_fact = Elefe.where(:user_id => user.id).first
    attachments["facture"] = { content_type: "application/pdf", filename: "facture.pdf", body: pj }
    mail(to: user.email, subject: 'Votre facture')
  end

  def annule_email(user)
    mail(to: user.email, subject: 'Annulation de commande')
  end
end
