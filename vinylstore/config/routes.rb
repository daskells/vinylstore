Rails.application.routes.draw do
  
  get 'pages/index'

  devise_for :users
  root to: "static_pages#home"
  resources :items
  root 'static_pages#home'
  
  get '/help', to: 'static_pages#help'

  get '/register', to: 'static_pages#register'

  get '/login', to: 'static_pages#login'

  get 'static_pages/profile'

  get '/catalog', to: 'static_pages#catalog'

  get '/search', to: 'static_pages#search'

  get '/cart', to: 'static_pages#cart'

  get 'static_pages/checkout'

  get 'static_pages/confirmation'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
