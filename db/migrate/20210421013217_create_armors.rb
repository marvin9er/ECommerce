class CreateArmors < ActiveRecord::Migration[6.1]
  def change
    create_table :armors do |t|
      t.integer :armor
      t.integer :concealment
      t.decimal :speed
      t.string :dodge
      t.integer :steadiness
      t.decimal :stamina
      t.string :description
      t.integer :armorCategory

      t.timestamps
    end
  end
end
