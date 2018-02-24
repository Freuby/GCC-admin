class CreateProduits < ActiveRecord::Migration[5.0]
  def change
    create_table :produits do |t|
      t.string :ref
      t.string :nom
      t.string :couleur
      t.string :marque
      t.float :prix
      t.boolean :dispo
      t.integer :delai
      t.integer :typ_livr
      t.float :tar_livr
      t.integer :del_livr
      t.string :descriptif
      t.string :caract0
      t.string :attr0
      t.string :caract1
      t.string :attr1
      t.string :caract2
      t.string :attr2
      t.string :caract3
      t.string :attr3
      t.string :caract4
      t.string :attr4
      t.string :caract5
      t.string :attr5
      t.string :caract6
      t.string :attr6
      t.string :caract7
      t.string :attr7
      t.string :caract8
      t.string :attr8
      t.string :caract9
      t.string :attr9

      t.timestamps
    end
  end
end
