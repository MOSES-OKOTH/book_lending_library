Rails.application.routes.draw do
  root "books#index"

  resources :books, only: [:index, :show] do
    resources :borrowings, only: [:create]
  end

  resources :borrowings, only: [:destroy]

  get "profile", to: "users#profile", as: "user_profile"
end
