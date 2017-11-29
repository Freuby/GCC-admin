class CreateCommandes < ActiveRecord::Migration[5.0]
  def change
    create_table :commandes do |t|
      t.string :description
      t.float :montant

      t.timestamps
    end
  end
end
