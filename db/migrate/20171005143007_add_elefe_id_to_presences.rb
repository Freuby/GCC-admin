class AddElefeIdToPresences < ActiveRecord::Migration[5.0]
  def change
    add_column :presences, :elefe_id, :integer
  end
end
