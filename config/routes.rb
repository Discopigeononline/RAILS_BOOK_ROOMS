Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'pages/bookings', to: 'pages#bookings'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :hotels, only: %i[index show]
  resources :rooms, only: %i[index show] do
    resources :bookings, only: %i[create edit update]
  end

  resources :bookings, only: %i[destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
