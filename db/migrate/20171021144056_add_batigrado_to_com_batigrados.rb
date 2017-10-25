class AddBatigradoToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_reference :com_batigrados, :batigrado, foreign_key: true
  end
end
