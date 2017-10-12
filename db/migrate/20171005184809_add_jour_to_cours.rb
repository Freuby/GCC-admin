class AddJourToCours < ActiveRecord::Migration[5.0]
  def change
    add_column :cours, :jour, :string
  end
end
