class AddElefeToEtats < ActiveRecord::Migration[5.0]
  def change
    add_reference :etats, :elefe, foreign_key: true
  end
end
