class AddElefeToPresences < ActiveRecord::Migration[5.0]
  def change
    add_reference :presences, :elefe, foreign_key: true
  end
end
