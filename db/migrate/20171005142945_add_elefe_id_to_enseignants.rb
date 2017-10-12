class AddElefeIdToEnseignants < ActiveRecord::Migration[5.0]
  def change
    add_column :enseignants, :elefe_id, :integer
  end
end
