class AddElefeToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_reference :com_batigrados, :elefe, foreign_key: true
  end
end
