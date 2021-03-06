Rails.application.routes.draw do

  devise_for :users
  root to: 'home#top'
  get "home/about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
end
