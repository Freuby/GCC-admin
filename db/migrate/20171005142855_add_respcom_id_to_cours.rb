class AddRespcomIdToCours < ActiveRecord::Migration[5.0]
  def change
    add_column :cours, :respcom_id, :integer
  end
end
