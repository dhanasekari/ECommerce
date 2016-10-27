Rails.application.routes.draw do
  
  get 'sessions/new'

     get '/signup' => 'user#new' 
     post '/signup' => 'user#create' 
     get    '/',   to: 'sessions#new'
  	 post   '/login',   to: 'sessions#create'
  	 delete '/logout',  to: 'sessions#destroy'    
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
   get 'product/:id/cart_show' => 'product#cart_show' 



   get '/category' => 'category#index'
   post '/category/create' => 'category#create'
   get '/category/new' => 'category#new'
   patch  '/category/update' => 'category#update'
   get '/category/show/:id' => 'category#show'
   get '/category/edit/:id' => 'category#edit'  
   get '/category/delete/:id' => 'category#delete'
   get '/category' => 'category#update'

   get 'category/:id/show_product' => 'category#show_product'


   get '/order' => 'order#index'
   post '/order/create' => 'order#create'
   get '/order/new' => 'order#new'
    patch '/order/update' => 'order#update'
   get '/order/show/:id' => 'order#show'
   get '/order/edit/:id' => 'order#edit'
  get '/order/delete/:id' => 'order#delete'
   get '/order/update' => 'order#update'
   
  	
end
