class TicketRepa < ApplicationRecord
  belongs_to :elefe
  belongs_to :repasgcc
  has_many :commandes
end
