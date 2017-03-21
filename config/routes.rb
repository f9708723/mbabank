Rails.application.routes.draw do

devise_for :clients
resources :clients, only: [:show, :edit, :update, :index]
root to: 'projects#index'
resources :projects, only: [:new, :index, :create, :destroy, :edit, :update]
end
