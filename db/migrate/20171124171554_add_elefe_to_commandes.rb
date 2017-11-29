class AddElefeToCommandes < ActiveRecord::Migration[5.0]
  def change
    add_reference :commandes, :elefe, foreign_key: true
  end
end
