class CreateCompdts < ActiveRecord::Migration[5.0]
  def change
    create_table :compdts do |t|
      t.integer :qte
      t.string :couleur
      t.string :taille
      t.integer :typ_livr
      t.integer :vill_collect
      t.string :nom
      t.string :prenom
      t.string :rue
      t.string :cp
      t.string :ville

      t.timestamps
    end
  end
end
