class AddUserToPaiements < ActiveRecord::Migration[5.0]
  def change
    add_reference :paiements, :user, foreign_key: true
  end
end
