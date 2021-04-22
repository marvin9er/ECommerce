class RenameArmorCategoryToArmorCategoryIdInArmors < ActiveRecord::Migration[6.1]
  def change
    rename_column :armors, :armorCategory, :armorCategory_Id
  end
end
