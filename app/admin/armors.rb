ActiveAdmin.register Armor do

  permit_params :armor, :concealment, :speed, :dodge, :steadiness, :stamina, :description, :armorCategory, :price, :name

end
