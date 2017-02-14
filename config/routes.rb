Rails.application.routes.draw do

  # devise用のcontrollerを作成したがおそらく必要でないので、
  # 最終的に不要であれば該当のcontrollerは削除する
  devise_for :users

  resources :users, only: [:edit, :update, :show] do
  resource :relationships, only: [:create, :destroy]
  get :favorites, on: :member
  get :follows, on: :member
  get :followers, on: :member
  end


  resources :users, :only => [:index, :edit, :show, :update] do
    get :favorites, on: :member
  end
  resources :articles do
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, :only => [:index, :show] do
    get :comments, on: :member
  end

  resources :articles do 
    resources :comments, :only => [:create, :destroy]
  end

  # いらなくなったはず
  # resources :users, :only => [:index, :show, :edit, :update, :destroy]
  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end