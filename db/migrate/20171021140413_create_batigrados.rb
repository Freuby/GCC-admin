class CreateBatigrados < ActiveRecord::Migration[5.0]
  def change
    create_table :batigrados do |t|
      t.string :titre
      t.text :description
      t.date :date_bat
      t.text :adresse
      t.string :cp
      t.string :ville
      t.float :tarif1
      t.float :tarif2
      t.float :tarif_ext
      t.float :tar_rep1
      t.float :tar_rep2
      t.float :tar_rep3
      t.float :tar_soiree
      t.string :adr_soiree
      t.date :heur_soiree

      t.timestamps
    end
  end
end
