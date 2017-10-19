class AddRepasgccToTicketRepas < ActiveRecord::Migration[5.0]
  def change
    add_reference :ticket_repas, :repasgcc, foreign_key: true
  end
end
