class AddFromToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :from, :string
    add_column :orders, :receiver_number, :integer
    add_column :orders, :receiver_name, :string
  end
end
