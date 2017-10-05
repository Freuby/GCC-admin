class CreatePresences < ActiveRecord::Migration[5.0]
  def change
    create_table :presences do |t|
      t.date :datecours, null: false, default: 0
      t.string :etat, null: false, default: ""

      t.timestamps
    end
  end
end
