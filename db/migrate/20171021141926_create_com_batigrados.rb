class CreateComBatigrados < ActiveRecord::Migration[5.0]
  def change
    create_table :com_batigrados do |t|
      t.string :nom
      t.string :prenom
      t.string :nom_grupo
      t.string :email
      t.string :ttshirt
      t.string :tpant
      t.boolean :bati1
      t.boolean :bati2
      t.boolean :gradup
      t.boolean :repas1
      t.boolean :repas2
      t.boolean :repas3
      t.boolean :soiree
      t.float :montant
      t.string :reglt

      t.timestamps
    end
  end
end
