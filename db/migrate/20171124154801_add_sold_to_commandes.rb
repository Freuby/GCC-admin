class AddSoldToCommandes < ActiveRecord::Migration[5.0]
  def change
    add_column :commandes, :sold, :boolean, default: false
  end
end
