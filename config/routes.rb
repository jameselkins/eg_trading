Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users
  root "main#home"
  resources :produces
end
