class CreateJoinTableElefeBatigrado < ActiveRecord::Migration[5.0]
  def change
    create_join_table :eleves, :batigrados do |t|
      t.index [:elefe_id, :batigrado_id]
      t.index [:batigrado_id, :elefe_id]
    end
  end
end
