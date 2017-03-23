Rails.application.routes.draw do

  devise_for :workers
  devise_for :clients
root to: 'top#index'

resources :clients, only: [:show, :edit, :update, :index]
resources :workers, only: [:show, :edit, :update, :index]
resources :projects, only: [:new, :index, :create, :destroy, :edit, :update] do
  resources :proposals, only: [:new, :create]
  end
end
