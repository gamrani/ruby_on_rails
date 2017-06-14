Rails.application.routes.draw do

  #get 'pages/index'

  #get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #root 'pages#index'
    root 'users#home'
    get    '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    get '/logout',  to: 'sessions#destroy'
    get '/edit', to: 'users#edit'
    resources :users
end
