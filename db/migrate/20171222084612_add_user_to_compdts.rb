class AddUserToCompdts < ActiveRecord::Migration[5.0]
  def change
    add_reference :compdts, :user, foreign_key: true
  end
end
