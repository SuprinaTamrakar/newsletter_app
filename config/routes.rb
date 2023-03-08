Rails.application.routes.draw do
  root 'newsletters#index'
  get 'newsletters/index'
  get 'newsletters/show'
  get 'newsletters/new'
  get 'newsletters/edit'
  # devise_for :users
  # root to: "home#index" 
end
