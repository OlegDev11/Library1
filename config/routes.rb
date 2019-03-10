Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'groups#index'              #books имя контроллера, index метод контроллера
  resources :books
  resources :authors
  resources :groups
end
