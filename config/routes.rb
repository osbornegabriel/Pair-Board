Rails.application.routes.draw do
   get '/' => 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :slots do
    resources :appointments
  end

  resources :users, only: [:new, :create, :show, :update]
end
