class AddEnseignantToPresences < ActiveRecord::Migration[5.0]
  def change
    add_reference :presences, :enseignant, foreign_key: true
  end
end
