Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  resources :books
  resources :homes, only: [:new, :index, :show]
  resources :users

end
