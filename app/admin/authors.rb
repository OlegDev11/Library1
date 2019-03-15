ActiveAdmin.register Author do
  #какие атрибуты могут быть изменены
   permit_params :first_name, :last_name, :book_id

  #отключение методов
   actions :all

   show do
      attributes_table do
         table_for author.books do
            column "Books" do |book|
              link_to book.name, [:admin, book]
            end
         end
      end
   end
end
