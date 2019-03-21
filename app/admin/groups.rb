ActiveAdmin.register Group do
  permit_params :name, books_attributes: [:id, :_destroy, :name]

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
           f.has_many :books, heading: false, allow_destroy: true,  new_record: false do |book_form|
             book_form.input :name
           end
           actions
        end
          f.actions do
            f.action :submit, label: "Delete"
          end
    end
end
