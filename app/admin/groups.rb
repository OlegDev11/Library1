ActiveAdmin.register Group do
  permit_params :name
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
end
