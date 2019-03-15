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
        f.inputs "edit/books" do
           f.has_many :books, heading: false, allow_destroy: true,  new_record: false do |book_form|
             book_form.input :name
           end
        end
        f.button
    end
end
