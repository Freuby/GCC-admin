class AddStockToProduits < ActiveRecord::Migration[5.0]
  def change
    add_column :produits, :stock, :integer
  end
end
