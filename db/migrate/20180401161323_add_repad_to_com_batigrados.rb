class AddRepadToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :repad, :integer
  end
end
