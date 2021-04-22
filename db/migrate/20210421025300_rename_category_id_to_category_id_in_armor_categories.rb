class RenameCategoryIdToCategoryIdInArmorCategories < ActiveRecord::Migration[6.1]
  def change
    rename_column :armor_categories, :categoryId, :category_id
  end
end
