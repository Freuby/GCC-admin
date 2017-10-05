class CreateCours < ActiveRecord::Migration[5.0]
  def change
    create_table :cours do |t|
      t.string :nomvil, null: false, default: ""
      t.string :adresse, null: false, default: ""
      t.string :cp, null: false, default: ""
      t.string :telephon, null: false, default: ""
      t.integer :typcours, null: false, default: 0
      t.datetime :dateh, null: false, default: 0
      t.time :duree, null: false, default: 0

      t.timestamps
    end
  end
end
