Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :mopeds do
    resources :bookings, only: [:create, :new] do
      get :confirmed
    end
  end
  get "my_bookings", to: "bookings#my_bookings"
  get "my_mopeds", to: "mopeds#my_mopeds"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
