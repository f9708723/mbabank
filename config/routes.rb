Rails.application.routes.draw do

devise_for :clients
resources :clients, only: [:show, :edit, :update]
root 'projects#index'
resources :projects, only: [:new, :index, :create, :destroy, :edit, :update]
end
