Rails.application.routes.draw do
  get '/' => 'shoes#index'
  get '/shoes' => 'shoes#index'
  get '/shoes/new' => 'shoes#new'
  post '/shoes' => 'shoes#create'
  get '/shoes/random' => 'shoes#random'
  get '/shoes/:id' => 'shoes#show'
  get '/shoes/:id/edit' => 'shoes#edit'
  patch '/shoes/:id' => 'shoes#update'
  delete '/shoes/:id' => 'shoes#destroy'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'

  get '/carted_shoes' => 'carted_shoes#index'
  get '/carted_shoes/new' => 'carted_shoes#new'
  post '/carted_shoes' => 'carted_shoes#create'
  get '/carted_shoes/:id' => 'carted_shoes#show'
  get '/carted_shoes/:id/edit' => 'carted_shoes#edit'
  patch '/carted_shoes/:id' => 'carted_shoes#update'
  delete '/carted_shoes/:id' => 'carted_shoes#destroy'

  get '/orders' => 'orders#index'
  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
  get '/orders/:id/edit' => 'orders#edit'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
