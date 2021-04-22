class CreateArmorOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :armor_orders do |t|
      t.integer :order_id
      t.integer :armor_id
      t.decimal :price

      t.timestamps
    end
  end
end
