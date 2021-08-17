Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
   get 'profile', to: 'pages#profile'

  resources :users do
    resources :bookings, only:[:new, :create, :update, :edit, :index]
    resources :reviews, only:[:new, :create, :update, :edit, :index]
  end
  
  resources :services, only:[:new, :create, :update, :edit, :index]
end
