ActiveAdmin.register Order do

  permit_params :user_id, :dateOrdered


  form do |f|
    f.semantic_errors
    f.inputs
    f.actions
  end

end
