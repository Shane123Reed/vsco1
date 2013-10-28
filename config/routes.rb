Vsco::Application.routes.draw do

  root to: 'images#home'

  resources :images

  resources :users

   # AUTHENTICATIONS
  get 'authentications/new' => 'authentications#new' #shows form to add newbies MUST BE put before SHOW

  post 'authentications' => 'authentications#create' #creating new user- yay!

end
