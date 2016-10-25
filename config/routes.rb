Rails.application.routes.draw do
  
  get 'sessions/new'

     get '/signup' => 'user#new' 
     #post '/signup' => 'user#create'

     get    '/login',   to: 'sessions#new'
  	 post   '/login',   to: 'sessions#create'
  	 delete '/logout',  to: 'sessions#destroy'
     # get '/user/:id' => 'user#show' 
    
      resources :user

# resources :user
      get '/address' => 'address#index'
   post 'address/create' => 'address#create'   
   get 'address/new' => 'address#new'  
   patch  'address/update' => 'address#update'
   get 'address/:id' =>'address#show'
   get 'address/edit/:id' =>'address#edit'
   get 'address/delete/:id' =>'address#delete'
   get 'address/update' =>'address#update'

   get '/product' => 'product#index'
   post '/product/create' => 'product#create'   
   get '/product/new' => 'product#new'  
   patch  '/product/update' => 'product#update'
   get '/product/:id' =>'product#show'
   get '/product/edit/:id' =>'product#edit'
   get '/product/delete/:id' =>'product#delete'
   get '/product/update' =>'product#update'


  	
end
