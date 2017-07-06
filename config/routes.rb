Rails.application.routes.draw do
  devise_for :users

  root 'bicycles#index'
  resources :bicycles, only: [:index, :show]
end
