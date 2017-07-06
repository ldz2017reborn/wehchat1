Rails.application.routes.draw do
  devise_for :users

  resources :friendships
  resources :users, only: [:index]

  root "friendships#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
