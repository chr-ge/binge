Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "movies#index"

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies

  resources :users
  get "signup" => "users#new"
  
  resource :session, only: [:new, :create, :destroy]
  get "signin" => "sessions#new"

  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  resources :genres
  resources :favorites
end