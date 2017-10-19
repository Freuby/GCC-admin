class CreateRepasgccs < ActiveRecord::Migration[5.0]
  def change
    create_table :repasgccs do |t|
      t.string :titre
      t.text :adresse
      t.date :date_repas
      t.date :date_lim
      t.string :repas1_enf
      t.float :r1e_tarif
      t.string :repas2_enf
      t.float :r2e_tarif
      t.string :repas1_ad
      t.float :r1a_tarif
      t.string :repas2_ad
      t.float :r2a_tarif

      t.timestamps
    end
  end
end
