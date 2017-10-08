class ChangeFormatInOrders < ActiveRecord::Migration[5.0]
  def change
    change_table :orders do |t|
        t.change :receiver_name, :string
    end
  end
end
