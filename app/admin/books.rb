ActiveAdmin.register Book do
actions :all, except: [:update, :destroy, :edit, :create]
    

permit_params :name, :description, :group_id



end
