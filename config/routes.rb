Restaurantly::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  resources :restaurants
  root to: "restaurants#index"
  end
