class AddNameToArmor < ActiveRecord::Migration[6.1]
  def change
    add_column :armors, :name, :string
  end
end
