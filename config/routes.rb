Rails.application.routes.draw do
  get 'orders/new'
  get 'nav/home'
  get 'nav/about'
  get 'nav/contact'
  devise_for :users, controllers: { registrations: "registrations" }
  resources :profiles
  resources :searches

  resources :conversations do
    resources :messages
  end

  resources :subscribers

  root to: 'profiles#index'
end
