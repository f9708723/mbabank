Rails.application.routes.draw do

root 'projects#index'
resources :projects, only: [:new, :index, :create, :destroy, :edit, :update]
end
