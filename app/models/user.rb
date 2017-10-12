class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :eleves

  validates :password, length: { minimum: 6, message: " doit être plus grand (6 caratères minimum)" }, on: :update
  validates_confirmation_of :password, on: :update

end
