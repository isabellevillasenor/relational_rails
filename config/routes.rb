Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/microbreweries', to: 'microbreweries#index'
get '/microbreweries/new', to: 'microbreweries#new'
post '/microbreweries', to: 'microbreweries#create'
get '/microbreweries/:id', to: 'microbreweries#show'
get '/microbreweries/:id/edit', to: 'microbreweries#edit'
patch '/microbreweries/:id', to: 'microbreweries#update'
post '/microbreweries/:id', to: 'microbreweries#update'
delete 'microbreweries/:id', to: 'microbreweries#destroy'

get '/teahouses', to: 'teahouses#index'
get 'teahouses/new', to: 'teahouses#new'
post '/teahouses', to: 'teahouses#create'
get '/teahouses/:id', to: 'teahouses#show'
get '/teahouses/:id/edit', to: 'teahouses#edit'
patch '/teahouses/:id', to: 'teahouses#update'
post '/teahouses/:id', to: 'teahouses#update'
delete 'teahouses/:id', to: 'teahouses#destroy'
end
