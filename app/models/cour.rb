class Cour < ApplicationRecord
  belongs_to :enseignant
  has_and_belongs_to_many :eleves

  validates_format_of :mailpres,:with => Devise::email_regexp
  validates :nomvil, :typcours, :jour, :mailpres, presence: true
end
