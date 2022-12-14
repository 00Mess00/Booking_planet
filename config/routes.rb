Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :planets, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
  namespace :owner do
    resources :planets, only: [:index]
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
