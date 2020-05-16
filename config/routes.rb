Rails.application.routes.draw do
  get 'orders/new'
  get 'nav/home'
  get 'nav/about'
  get 'nav/contact'
  devise_for :users
  resources :profiles
  resources :searches

  resources :conversations do
    resources :messages
  end

  root to: 'profiles#index'
end
