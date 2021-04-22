class ChangeCountrycolumnincontacts < ActiveRecord::Migration[6.1]
  def change
    rename_column :contacts, :country, :residentCountry
  end
end
