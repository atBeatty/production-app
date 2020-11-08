Rails.application.routes.draw do
  resources :productions
  resources :users
  resources :clients

  resources :producers do 
    resources :productions
  end
  
  # root to: "users#new"
  # get "/auth/:provider/callback" => "sessions#create"
  get '/auth/github/callback', :to => 'sessions#create'
  # get "/signout" => "sessions#destroy", :as => :signout

  get '/login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/about', to: 'welcome#about'
  get '/', to: 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
