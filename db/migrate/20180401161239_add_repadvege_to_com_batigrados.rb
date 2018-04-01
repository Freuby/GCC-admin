class AddRepadvegeToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :repadvege, :integer
  end
end
