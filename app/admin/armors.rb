ActiveAdmin.register Armor do

  permit_params :armor, :concealment, :speed, :dodge, :steadiness, :stamina, :description, :armorCategory, :price, :name, :image


  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
