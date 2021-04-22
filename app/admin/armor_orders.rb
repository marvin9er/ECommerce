ActiveAdmin.register ArmorOrder do

  permit_params :order_id, :armor_id, :price

  form do |f|
    f.semantic_errors
    f.inputs
    f.actions
  end
end
