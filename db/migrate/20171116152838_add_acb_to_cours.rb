class AddAcbToCours < ActiveRecord::Migration[5.0]
  def change
    add_column :cours, :acb, :boolean
  end
end
