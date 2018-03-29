class AddSoirpayToComBatigrados < ActiveRecord::Migration[5.0]
  def change
    add_column :com_batigrados, :soirpay, :boolean, default: false
  end
end
