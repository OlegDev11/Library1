Rails.application.routes.draw do

  root :to =>'books#index'    #books имя контроллера, index метод контроллера

  
  resources :groups
  resources :authors
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
