Rails.application.routes.draw do
   get '/' => 'sessions#new'
   get '/message' => 'twilio#send_text'

  resources :sessions, only: [:new, :create, :destroy]
  resources :slots do
    resources :appointments
  end

  resources :users, only: [:new, :create, :show, :update, :edit]
end
