Rails.application.routes.draw do

  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'

  resources :orders do
    resources:orderitems
  end
  
  devise_for :users do
    resources:orders
  end
  
  get '/checkout' => 'cart#createOrder'
  
  get '/paid' => 'static_pages#paid'
  
  post '/search' => 'items#search'
  
  get 'cart/index'
  
  resources :items
  root 'static_pages#home'

  get '/register', to: 'static_pages#register'

  get '/search', to: 'static_pages#search'
  
  get '/login', to: 'user#login'
  get '/logout', to: 'user#logout'
  
  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  
  root :to => 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

