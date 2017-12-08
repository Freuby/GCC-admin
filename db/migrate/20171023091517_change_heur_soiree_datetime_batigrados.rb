class ChangeHeurSoireeDatetimeBatigrados < ActiveRecord::Migration[5.0]
  def up
    change_column :batigrados, :heur_soiree, :datetime
  end
  def down
    change_column :batigrados, :heur_soiree, :date
  end
end
