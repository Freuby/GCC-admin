class AddBatiassoIdToBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :batigrados, :batiasso_id, :integer
  end
end
