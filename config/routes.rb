Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root 'toppages#index'

  resources :transactions do
    get 'buy'
  end

  resources :mypages do
    collection do
      get 'index'
      get 'logout'
      get 'payment'
      get 'show'
    end
  end

  resources :login, only: [:index, :new]
  resources :toppages, only: :index
  resources :show_items,only: :index
end
