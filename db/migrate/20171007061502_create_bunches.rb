class CreateBunches < ActiveRecord::Migration[5.0]
  def change
    create_table :bunches do |t|
      t.references :order, foreign_key: true
      t.string :gender_for
      t.integer :price, default: 0
      t.string :color
      t.text :comment
      t.timestamps
    end
  end
end
