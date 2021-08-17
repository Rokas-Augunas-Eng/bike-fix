Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
   get 'profile', to: 'pages#profile'

  resources :mechanics do
    resources :bookings, only:[:new, :create, :update, :edit, :index]
  end
end
