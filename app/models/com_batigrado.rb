class ComBatigrado < ApplicationRecord
  belongs_to :batigrado
  belongs_to :elefe
  has_many :commandes

  validates :nom, :prenom, :nom_grupo, :email, :ttshirt, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

end
