ActiveAdmin.register Group do

  permit_params :name

  actions :all, except: [:update, :destroy, :edit, :create]
end
