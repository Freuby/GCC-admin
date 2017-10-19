class AddElefeToTicketRepas < ActiveRecord::Migration[5.0]
  def change
    add_reference :ticket_repas, :elefe, foreign_key: true
  end
end
