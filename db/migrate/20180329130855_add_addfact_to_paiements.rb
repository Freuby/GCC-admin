class AddAddfactToPaiements < ActiveRecord::Migration[5.0]
  def change
    add_column :paiements, :addfact, :string
  end
end
