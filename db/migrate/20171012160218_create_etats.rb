class CreateEtats < ActiveRecord::Migration[5.0]
  def change
    create_table :etats do |t|
      t.string :etat
      t.string :description

      t.timestamps
    end
  end
end
