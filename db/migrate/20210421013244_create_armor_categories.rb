class CreateArmorCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :armor_categories do |t|
      t.string :name
      t.integer :categoryId

      t.timestamps
    end
  end
end
