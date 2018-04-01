class AddAgeactuToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :ageactu, :integer
  end
end
