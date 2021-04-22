class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user
      t.datetime :dateOrdered

      t.timestamps
    end
  end
end
