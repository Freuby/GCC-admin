class AddUserToCommandes < ActiveRecord::Migration[5.0]
  def change
    add_reference :commandes, :user, foreign_key: true
  end
end
