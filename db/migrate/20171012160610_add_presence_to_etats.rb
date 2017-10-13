class AddPresenceToEtats < ActiveRecord::Migration[5.0]
  def change
    add_reference :etats, :presence, foreign_key: true
  end
end
