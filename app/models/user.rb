class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :eleves
  has_many :commandes
  has_many :paiements

  validates_format_of :email,:with => Devise::email_regexp
  validates :email, presence: true, if: :mail_exist
  validates :password, length: { minimum: 6, message: " doit être plus grand (6 caratères minimum)" }, on: :update
  validates_confirmation_of :password, on: :update

  def mail_exist
    !Elefe.where(:email => :email)
  end

end
