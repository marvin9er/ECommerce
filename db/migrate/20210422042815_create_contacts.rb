class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :phone
      t.string :city
      t.string :country
      t.string :state

      t.timestamps
    end
  end
end
