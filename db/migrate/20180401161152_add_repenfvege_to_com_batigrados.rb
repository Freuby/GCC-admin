class AddRepenfvegeToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :repenfvege, :integer
  end
end
