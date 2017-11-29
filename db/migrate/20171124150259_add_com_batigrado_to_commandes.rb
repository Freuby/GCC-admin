class AddComBatigradoToCommandes < ActiveRecord::Migration[5.0]
  def change
    add_reference :commandes, :com_batigrado, foreign_key: true
  end
end
