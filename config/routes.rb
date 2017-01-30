Rails.application.routes.draw do

  devise_for :users, :controllers => {
  	:registrations => 'users/registrations'
  }
  resources :articles
  get '/top' => 'home#top'

  resources :users, :only => [:index, :show, :edit, :update, :destroy]
  root 'articles#index'

  # ↓いらないのでは…？
  resources :sty_li_shes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
