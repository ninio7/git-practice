Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root :to =>"homes#top"
  get 'home/about' => 'homes#about', as: 'about'

  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
  end

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end