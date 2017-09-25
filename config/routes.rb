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

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/orders' => 'orders#index'
  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

end
