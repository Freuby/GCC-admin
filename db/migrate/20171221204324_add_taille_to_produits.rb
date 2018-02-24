class AddTailleToProduits < ActiveRecord::Migration[5.0]
  def change
    add_column :produits, :taille, :string
  end
end
