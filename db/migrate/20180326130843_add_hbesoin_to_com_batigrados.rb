class AddHbesoinToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :hbesoin, :integer
  end
end
