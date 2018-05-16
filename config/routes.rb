Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chat#index'
  # get '/' => 'home#index'
  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals' => 'animals#index'
  
  get '/movie/:id' => 'movie#index'
  
  post '/chat/create' => 'chat#create'
  # get '/'
end
