class AddLivreToCompdts < ActiveRecord::Migration[5.0]
  def change
    add_column :compdts, :livre, :boolean, default: false
  end
end
