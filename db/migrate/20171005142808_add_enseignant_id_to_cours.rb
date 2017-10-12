class AddEnseignantIdToCours < ActiveRecord::Migration[5.0]
  def change
    add_column :cours, :enseignant_id, :integer
  end
end
