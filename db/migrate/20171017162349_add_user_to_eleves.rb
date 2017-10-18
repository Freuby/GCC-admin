class AddUserToEleves < ActiveRecord::Migration[5.0]
  def change
    add_reference :eleves, :user, foreign_key: true
  end
end
