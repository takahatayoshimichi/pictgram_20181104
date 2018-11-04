Rails.application.routes.draw do
  get 'favorites/index'
  post '/favorites/index'
  get 'topics/new'
  get 'sessions/new'
 root 'pages#index'
 get 'pages/help'

 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'

 resources :users
 resources :topics
get 'favorite/index'
post'/favorite', to: 'favorites#create'

end
