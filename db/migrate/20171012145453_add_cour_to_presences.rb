class AddCourToPresences < ActiveRecord::Migration[5.0]
  def change
    add_reference :presences, :cour, foreign_key: true
  end
end
