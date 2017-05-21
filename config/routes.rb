Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'comics#index'
  get '/comics' => 'comics#index'
  get '/comics/new' => 'comics#new'
  post '/comics' => 'comics#create'
  get '/comics/:id' => 'comics#show'
  get '/comics/:id/edit' => 'comics#edit'
  patch '/comics/:id' => 'comics#update'
  delete 'comics/:id' => 'comics#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get 'carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products/:id' => 'carted_products#destroy'

end
