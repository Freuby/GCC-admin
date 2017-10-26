class CreateTicketRepas < ActiveRecord::Migration[5.0]
  def change
    create_table :ticket_repas do |t|
      t.integer :qte1, :default => 0
      t.integer :qte2, :default => 0
      t.integer :qta1, :default => 0
      t.integer :qta2, :default => 0

      t.timestamps
    end
  end
end
