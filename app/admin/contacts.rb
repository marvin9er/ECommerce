ActiveAdmin.register Contact do

  permit_params :address, :phone, :city, :residentCountry, :state, :name

end
