Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
   get 'profile', to: 'pages#profile'
   get 'confirmation', to: 'pages#confirmation'

  resources :users do
    resources :bookings, only:[:new, :create, :update, :edit, :index] do
        resources :reviews, only:[:new, :create, :update, :edit, :index]
      end
  end
  
  resources :bookings, except: [:new, :create] do
    member do
      get "confirmation"
    end
  end

  resources :bookings, only:[:confirmation] do
    # resources :chatrooms, only: :show do
    #   resources :messages, only: :create
    # end
    resources :services, only:[:index, :show] do
      member do 
        get "confirmation"
      end
    end
  end
  
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  
  resources :services, only:[:new, :create, :update, :edit, :index]
  
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  
end
