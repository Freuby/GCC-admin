class AddEnseignantIdToPresences < ActiveRecord::Migration[5.0]
  def change
    add_column :presences, :enseignant_id, :integer
  end
end
