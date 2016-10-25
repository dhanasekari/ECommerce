Rails.application.routes.draw do
  
     get '/signup' => 'user#new' 
     post '/signup' => 'user#create'    
     #get '/user/show/:id' => 'user#show'
     get '/user/login' => 'user#login'
     post '/user/login_auth' => 'user#login_auth' 
      #root :to => "user#show"

  	resources :user
end
