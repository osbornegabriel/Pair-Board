Rails.application.routes.draw do
   get '/' => 'sessions#new'

  resources :sessions, only: [:new, :create, :delete]
  resources :slots
  resources :appointments
  resources :users, only: [:new, :create, :show, :update]
end
