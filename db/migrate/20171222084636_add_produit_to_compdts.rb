class AddProduitToCompdts < ActiveRecord::Migration[5.0]
  def change
    add_reference :compdts, :produit, foreign_key: true
  end
end
