class AddPonctuelToEtats < ActiveRecord::Migration[5.0]
  def change
    add_column :etats, :ponctuel, :boolean
  end
end
