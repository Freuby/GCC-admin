class AddRepenfToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :repenf, :integer
  end
end
