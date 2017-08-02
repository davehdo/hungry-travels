Rails.application.routes.draw do
  # resources :trips, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :trips, except: [:new, :update, :edit]
      resources :restaurants, only: [:create, :destroy]
    end
  end

  devise_for :users
  root 'static_pages#index'
  get 'trips/:id' => 'static_pages#index'
  get 'trips' => 'static_pages#index'

  resources :yelp, only: [:index, :create]
end
