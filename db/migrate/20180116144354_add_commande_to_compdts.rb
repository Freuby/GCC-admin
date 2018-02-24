class AddCommandeToCompdts < ActiveRecord::Migration[5.0]
  def change
    add_reference :compdts, :commande, foreign_key: true
  end
end
