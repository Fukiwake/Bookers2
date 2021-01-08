Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/index'
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
end
