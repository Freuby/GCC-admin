class AddRemarqueToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :remarque, :string
  end
end
