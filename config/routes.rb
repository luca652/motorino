Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  resources :mopeds do
    resources :bookings, only: [:create, :new]
  end
  get "my_bookings", to: "bookings#my_bookings"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
