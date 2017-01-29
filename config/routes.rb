Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  resources :articles
  get '/top' => 'home#top'

  resources :users, :only => [:index, :show, :edit, :update, :destroy]
  root 'articles#index'
=======
<<<<<<< HEAD
  resources :sty_li_shes
=======
>>>>>>> c7f38dfa1ee0aa75671399dd4a09e737f1a31e88
>>>>>>> ee2fae0e3961353f99ed03542eaa73f22ec8a736
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
