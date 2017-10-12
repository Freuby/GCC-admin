class AddUserIdToEleves < ActiveRecord::Migration[5.0]
  def change
    add_column :eleves, :user_id, :integer
  end
end
