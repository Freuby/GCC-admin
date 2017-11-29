class CreatePaiements < ActiveRecord::Migration[5.0]
  def change
    create_table :paiements do |t|
      t.float :montant
      t.integer :mode_paie
      t.boolean :valide

      t.timestamps
    end
  end
end
