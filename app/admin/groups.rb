ActiveAdmin.register Group do
  permit_params :name, books_attributes: [:id, :_destroy, :name], book_ids: []

  actions :all

    show do
       attributes_table do
         table_for group.books do
             column "Books" do |book|
               link_to book.name, [:admin, book]
             end
          end
       end
    end

    form do |f|
        f.inputs "edit/group" do
           f.input :name
           f.input :books, :as => :check_boxes

           actions
        end
           f.has_many :books, heading: false, allow_destroy: true,  new_record: false do |book_form|
             book_form.input :name
           end
            f.actions do
             f.action :submit, label: "Delete"
          end
     end
end
