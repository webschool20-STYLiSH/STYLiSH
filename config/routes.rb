Rails.application.routes.draw do

  # devise用のcontrollerを作成したがおそらく必要でないので、
  # 最終的に不要であれば該当のcontrollerは削除する
  devise_for :users
  resources :users, :only => [:edit, :show, :update]

  resources :articles
  get '/top' => 'home#top'

  # いらなくなったはず
  # resources :users, :only => [:index, :show, :edit, :update, :destroy]
  root 'articles#index'
  # ↓いらないはず…？
  resources :sty_li_shes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
