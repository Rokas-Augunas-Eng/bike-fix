Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
   get 'profile', to: 'pages#profile'
   # get 'confirmation', to: 'pages#confirmation'

  resources :users do
    resources :bookings, only:[:new, :create, :update, :edit, :index]
    resources :reviews, only:[:new, :create, :update, :edit, :index]
  end
  resources :bookings, except: [:new, :create] do
    member do 
      get "confirmation"
    end
  end
  
  resources :services, only:[:new, :create, :update, :edit, :index]
end
