class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :number
      t.decimal :total, default: 0
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
