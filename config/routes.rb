Rails.application.routes.draw do
  devise_for :users

  root 'bicycles#index'
  resources :bicycles, only: [:index, :show]

  resources :bicycle_suggestions, only: [:new, :create, :destroy] do
    put :merge
  end

  resources :bicycle_usages, only: [:create]

  namespace :users do
    resources :bicycles
  end
end
