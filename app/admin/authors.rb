ActiveAdmin.register Author do
  #какие атрибуты могут быть изменены
   permit_params :first_name, :last_name, :book_id

  #отключение методов
   actions :all
end
