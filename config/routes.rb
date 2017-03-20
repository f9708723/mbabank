Rails.application.routes.draw do

  devise_for :clients
root 'projects#index'
resources :projects, only: [:new, :index, :create, :destroy, :edit, :update]
end
