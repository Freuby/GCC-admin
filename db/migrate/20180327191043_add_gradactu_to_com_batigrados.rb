class AddGradactuToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :gradactu, :string
  end
end
