Rails.application.routes.draw do
  resources :articles
  get '/top' => 'home#top'

  resources :users, :only => [:index, :show, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
