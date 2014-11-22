require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#show", as: :dashboards
    resources :users, only: [:show]
  end

  resources :listings, only: [:new]

  root to: "sessions#new", via: :get
end
