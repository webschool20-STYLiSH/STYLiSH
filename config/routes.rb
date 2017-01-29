Rails.application.routes.draw do
  devise_for :users
  resources :articles
  get '/top' => 'home#top'

  resources :users, :only => [:index, :show, :edit, :update, :destroy]
  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
