class CreateJoinTableCourElefe < ActiveRecord::Migration[5.0]
  def change
    create_join_table :cours, :eleves do |t|
      t.index [:cour_id, :elefe_id]
      t.index [:elefe_id, :cour_id]
    end
  end
end
