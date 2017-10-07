class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.date :date
      t.string :address
      t.date :order_delivery_date
      t.text :comment
      t.integer :total_order_sum, default: 0
      t.timestamps
    end
  end
end
