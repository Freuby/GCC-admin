class CreateEleves < ActiveRecord::Migration[5.0]
  def change
    create_table :eleves do |t|
      t.string :nom
      t.string :prenom
      t.string :rue
      t.string :cp
      t.string :ville
      t.string :email
      t.datetime :date_naissance
      t.string :tel_mobile
      t.string :tel_fixe
      t.integer :graduation
      t.integer :ville_entrainement
      t.text :a_signaler
      t.string :urgence_nom
      t.string :urgence_prenom
      t.string :urgence_parentee
      t.string :urgence_tel
      t.boolean :soin_moi
      t.boolean :soin_tutelle
      t.integer :info_ville
      t.integer :gcc_connait
      t.integer :parentee
      t.integer :prix
      t.integer :reglement
      t.boolean :signature

      t.timestamps
    end
  end
end
