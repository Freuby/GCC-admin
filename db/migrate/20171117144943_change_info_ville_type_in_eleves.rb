class ChangeInfoVilleTypeInEleves < ActiveRecord::Migration[5.0]
  def up
    change_column :eleves, :info_ville, :text
  end
  def down
    change_column :eleves, :info_ville, :integer
  end
end
