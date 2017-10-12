class CreateEnseignants < ActiveRecord::Migration[5.0]
  def change
    create_table :enseignants do |t|
      t.string :nom
      t.string :prenom
      t.integer :graduation

      t.timestamps
    end
  end
end
