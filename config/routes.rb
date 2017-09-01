Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :slots do
    resources :appointments
  end
  resources :users, only: [:new, :create, :show, :update, :edit]
end
