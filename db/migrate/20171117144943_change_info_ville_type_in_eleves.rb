class ChangeInfoVilleTypeInEleves < ActiveRecord::Migration[5.0]
  def change
    change_column :eleves, :info_ville, :text
  end
end
