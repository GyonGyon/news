Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  resources :articles


  get 'static_pages/home'
  root 'static_pages#home'

  get  '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/api/articles/', to: 'api#articles'
  get '/api/articles/:page', to: 'api#articles'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
