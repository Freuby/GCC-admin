class AddHtelephoneToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :htelephone, :string
  end
end
