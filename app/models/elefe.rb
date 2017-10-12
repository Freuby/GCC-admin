class Elefe < ApplicationRecord
  belongs_to :user
  has_many :cours
  has_many :presences
end
