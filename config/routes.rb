Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/microbreweries', to: 'microbreweries#index'
get '/microbreweries/:id', to: 'microbreweries#show'


end
