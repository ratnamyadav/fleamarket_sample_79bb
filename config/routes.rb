Rails.application.routes.draw do

  root 'mypages#show'

  resources :login, only: [:index, :new]
  resources :toppages,only: :index
  resources :new_member, only: :index
  resources :toppages, only: :index
  resources :transactions, only: :index
  resources :mypages, only: [:index, :show]
  resources :show_items,only: :index

end
