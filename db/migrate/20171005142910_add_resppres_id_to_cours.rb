class AddResppresIdToCours < ActiveRecord::Migration[5.0]
  def change
    add_column :cours, :resppres_id, :integer
  end
end
