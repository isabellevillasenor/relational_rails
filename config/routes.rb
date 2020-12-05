Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/microbreweries', to: 'microbreweries#index'
get '/microbreweries/new', to: 'microbreweries#new'
post '/microbreweries', to: 'microbreweries#create'
get '/microbreweries/:id', to: 'microbreweries#show'


end
