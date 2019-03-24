Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'books#index'              #books имя контроллера, index метод контроллера
  
  resources :books
  resources :authors
  resources :groups
end
