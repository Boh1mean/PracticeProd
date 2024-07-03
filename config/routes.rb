Rails.application.routes.draw do
  get 'home/index'
  resources :posts, only: [:new, :create]
 #resources :feed
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "home#index"
end
