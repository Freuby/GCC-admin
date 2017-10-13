class AddPresenceToEleves < ActiveRecord::Migration[5.0]
  def change
    add_reference :eleves, :presence, foreign_key: true
  end
end
