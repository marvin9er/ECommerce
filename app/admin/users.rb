ActiveAdmin.register User do

  permit_params :email, :password, :name, :address, :postalcode, :city, :phonenumber, :province

end
