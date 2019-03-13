ActiveAdmin.register Book do
  actions :all
  permit_params :name, :description, :avatar, group_ids: [], author_ids: []

  show do
  attributes_table do
    table_for book.authors do
     column "Authors" do |author|
       link_to author.name, [:admin, author]
     end

   end
    row :description
    row :name
    row :avatar  do |book|
        image_tag book.avatar.url
      end
    table_for book.groups do
     column "Groups" do |group|
       link_to group.name, [:admin, group]
     end
   end
  end
end

  form do |f|
      f.inputs "Add/Edit book" do
      f.input :name
      f.input :authors, :as => :check_boxes
      f.input :description
      f.input :groups, :as => :check_boxes
    end
     actions
  end
end
