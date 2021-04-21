class AddPriceToArmor < ActiveRecord::Migration[6.1]
  def change
    add_column :armors, :price, :decimal
  end
end
