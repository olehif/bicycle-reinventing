Rails.application.routes.draw do
  devise_for :users

  root 'bicycles#index'
  resources :bicycles, only: [:index, :show]

  namespace :users do
    resources :bicycles
  end
end
