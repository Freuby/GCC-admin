class AddHpropToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :hprop, :integer
  end
end
