class RenameArmorCategoryIdToArmorCategoryIdInArmors < ActiveRecord::Migration[6.1]
  def change
    rename_column :armors, :armorCategory_Id, :armorCategory_id
  end
end
