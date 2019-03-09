Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users


  root :to =>'books#index'    #books имя контроллера, index метод контроллера

  resources :books  do             #Это что бы заставить наш контроллер вести себя как RESTfull контроллер
      get :author,    on: :member      # :member это для того что бы методу author был доступ (к каждому ресурсу bookss !)
      get :groups, on: :collection     # :collection нужен для поиска по такому адресу http://localhost:3000/books/groups
    end
                                       # :collection применяется (для всей коллекции !)
  resources :authors
  resources :books
#  resources :comments              #отслеживание URL адресов
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
