Rails.application.routes.draw do
  resources :productions
  resources :owners
  resources :clients
  resources :producers

  get '/login', to: 'sessions#login'
  post 'login', to: 'sessions#login'
  get '/signup', to: 'owners#new'
  post '/signup', to: 'owners#new'

  get '/', to: 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
