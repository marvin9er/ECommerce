class AddColumnNameToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :name, :string
  end
end
