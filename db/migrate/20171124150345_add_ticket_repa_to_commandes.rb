class AddTicketRepaToCommandes < ActiveRecord::Migration[5.0]
  def change
    add_reference :commandes, :ticket_repa, foreign_key: true
  end
end
