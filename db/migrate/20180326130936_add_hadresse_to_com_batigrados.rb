class AddHadresseToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :hadresse, :string
  end
end
