class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
      change_table :bunches do |t|
        t.change :color, :text
    end
  end
end
