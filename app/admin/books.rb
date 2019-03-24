ActiveAdmin.register Book do
  actions :all
  permit_params :name, :description, :avatar, authors_attributes: [:id, :_destroy, :first_name, :last_name], group_ids: [], author_ids: []


  show do
    attributes_table do
        table_for book.authors do
            column "Authors" do |author|
              link_to author.name, [:admin, author]
            end
        end
        row :name
        row :avatar  do |book|
          image_tag book.avatar.url
        end
        row :description
         table_for book.groups do
            column "Groups" do |group|
              link_to group.name, [:admin, group]
            end
         end
    end
  end

  form do |f|
    f.inputs "update book" do
      f.input :name
      f.input :authors, :as => :check_boxes
      f.input :description
      f.input :groups, :as => :check_boxes
      f.input :avatar
      
       actions
    end
      f.has_many :authors, heading: false, allow_destroy: true,  new_record: false do |author_form|
        author_form.input :name
      end
      f.actions do
        f.action :submit, label: "Delete"
      end
   end
end
