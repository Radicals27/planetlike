Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  root to: "profiles#index"
  get 'search', to: "profiles#search"
  
end
