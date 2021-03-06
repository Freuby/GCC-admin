class UserMailer < ApplicationMailer
	include Devise::Mailers::Helpers
  default from: 'marcelo@grupoculturacapoeira.com'


	def confirmation_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :confirmation_instructions, opts)
  end

  def paiement_email(user, pj)
    @user_fact = user
    @elefe_fact = Elefe.where(:user_id => user.id).first
    attachments["facture"] = { content_type: "application/pdf", filename: "facture.pdf", body: pj }
    mail(to: user.email, subject: 'GCC - Votre facture')
  end

  def annule_email(user)
    mail(to: user.email, subject: 'GCC - Annulation de commande')
  end
end
