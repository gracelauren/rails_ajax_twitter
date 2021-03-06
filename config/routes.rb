Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :users, :only => [:show, :index]

  resources :blubs, :only => [:new, :create, :destroy]

end
