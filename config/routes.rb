Rails.application.routes.draw do

 
  #resources :favorites
  # resources :artworks
  get '/artists', to: 'artists#index'
  get '/collectors', to: 'collectors#index'
  post '/collectors/login', to: 'collectors#login'
  get '/artists/:id', to: 'artists#show'
  post '/artists/login', to: 'artists#login'
  
  get '/artworks', to: 'artworks#index'
  get '/artworks/:id', to: 'artworks#show'
  post '/artworks', to: 'artworks#create'
  patch "/artworks/:id", to: "artworks#update"
  delete '/artworks/:id', to: 'artworks#delete'

  # get '/artists/random', to: "artists#random"
  get '/favorites', to: 'favorites#index'
  post '/favorites', to: 'favorites#create'
  get '/favorites/:id', to: 'favorites#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
