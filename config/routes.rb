Rails.application.routes.draw do
  resources :productions, :users, :clients

  resources :clients do
    resources :productions, only: [:new]
  end

  resources :producers do 
    resources :productions
  end
  
  get '/auth/:provider/callback', :to => 'sessions#omniauth'
  
  get '/login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/about', to: 'welcome#about'
  get '/', to: 'welcome#home'
end
