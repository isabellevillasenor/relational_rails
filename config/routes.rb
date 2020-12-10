Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #microbreweries
  get '/microbreweries', to: 'microbreweries#index'
  get '/microbreweries/new', to: 'microberbeers#index'
  post '/microbreweries', to: 'microbreweries#create'
  get '/microbreweries/:id/beers', to: 'microbrewerybeers#index' #, as: 'microbrewerybeersindex'
  get '/microbreweries/:id', to: 'microbreweries#show'
  get '/microbreweries/:id/edit', to: 'microbreweries#edit'
  patch '/microbreweries/:id', to: 'microbreweries#update'
  post '/microbreweries/:id', to: 'microbreweries#update'
  delete 'microbreweries/:id', to: 'microbreweries#destroy'
  
  get 'microbreweries/:id/beers/new', to: 'microbrewerybeers#new'
  post 'microbreweries/:id/beers/', to: 'microbrewerybeers#create'

  #beer
  get '/beers', to: 'beers#index'
  get '/beers/:id', to: 'beers#show'

  #teahouses
  get '/teahouses', to: 'teahouses#index'
  get '/teahouses/:id/teas', to: 'teahouseteas#index', as: 'teahouseteasindex'
  get 'teahouses/new', to: 'teahouses#new'
  post '/teahouses', to: 'teahouses#create'
  get '/teahouses/:id', to: 'teahouses#show'
  get '/teahouses/:id/edit', to: 'teahouses#edit'
  patch '/teahouses/:id', to: 'teahouses#update'
  post '/teahouses/:id', to: 'teahouses#update'
  get '/teahouses/:id/teas/edit', to: 'teahouseteas#edit', as: 'teahouseteasedit'
  patch '/teahouses/:id/teas', to: 'teahouseteas#update'
  post '/teahouses/:id/teas', to: 'teahouseteas#update'
  delete 'teahouses/:id', to: 'teahouses#destroy'

  #teas
  get '/teas', to: 'teas#index'
  get '/teas/:id', to: 'teas#show'
  get '/teas/:id/edit', to: 'teas#edit'
  patch '/teas/:id', to: 'teas#update'
  post '/teas/:id', to: 'teas#update'
  delete 'teas/:id', to: 'teas#destroy'

  #teahouseteas
  get '/teahouseteas/:id/teas', to: 'teahouseteas#index', as: 'teahouseteas'
  get '/teahouses/:id/teas/new', to: 'teahouseteas#new'
  post '/teahouses/:id/teas', to: 'teahouseteas#create'
end
