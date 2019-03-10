ActiveAdmin.register Book do
  actions :all
  permit_params :name, :description, :group_id
end
