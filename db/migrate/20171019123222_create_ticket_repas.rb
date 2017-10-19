class CreateTicketRepas < ActiveRecord::Migration[5.0]
  def change
    create_table :ticket_repas do |t|
      t.integer :qte1
      t.integer :qte2
      t.integer :qta1
      t.integer :qta2

      t.timestamps
    end
  end
end
