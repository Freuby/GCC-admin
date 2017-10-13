class AddEnseignantToCours < ActiveRecord::Migration[5.0]
  def change
    add_reference :cours, :enseignant, foreign_key: true
  end
end
