class AddPrenomfactToPaiements < ActiveRecord::Migration[5.0]
  def change
    add_column :paiements, :prenomfact, :string
  end
end
