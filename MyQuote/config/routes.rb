Rails.application.routes.draw do
  #get 'search/index'
  #get 'about/index'
  #get 'home/index'
  resources :quotecategories
  resources :categories
  resources :quotes
  resources :philosophers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/about', to: 'about#index'
  get 'search', to: 'search#index'
  # Defines the root path route ("/")
  # root "articles#index"

  # Add before or after routes already present
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Add before or after routes already present
  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex'
  get '/your-quotes', to: 'home#urquotes'
end
