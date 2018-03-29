class AddNomfactToPaiements < ActiveRecord::Migration[5.0]
  def change
    add_column :paiements, :nomfact, :string
  end
end
