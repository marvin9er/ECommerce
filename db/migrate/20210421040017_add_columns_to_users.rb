class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :postalcode, :string
    add_column :users, :phonenumber, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
  end
end
