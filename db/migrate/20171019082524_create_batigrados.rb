class CreateBatigrados < ActiveRecord::Migration[5.0]
  def change
    create_table :batigrados do |t|
      t.string :titre
      t.date :date_bat
      t.string :tail_tshirt
      t.string :tail_pant
      t.float :tarif1
      t.float :tarif2
      t.string :grad_up
      t.string :boolean
      t.boolean :repas1
      t.boolean :repas2
      t.boolean :repas3
      t.boolean :soiree
      t.string :info_regl

      t.timestamps
    end
  end
end
