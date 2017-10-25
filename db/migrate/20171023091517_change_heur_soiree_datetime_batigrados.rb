class ChangeHeurSoireeDatetimeBatigrados < ActiveRecord::Migration[5.0]
  def change
    change_column :batigrados, :heur_soiree, :datetime
  end
end
