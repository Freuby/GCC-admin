class AddMailpresToCours < ActiveRecord::Migration[5.0]
  def change
    add_column :cours, :mailpres, :string
  end
end
