class AddCourIdToPresences < ActiveRecord::Migration[5.0]
  def change
    add_column :presences, :cour_id, :integer
  end
end
