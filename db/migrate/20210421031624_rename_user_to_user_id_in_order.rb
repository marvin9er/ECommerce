class RenameUserToUserIdInOrder < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :user, :user_id
  end
end
