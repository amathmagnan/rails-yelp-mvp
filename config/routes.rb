Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#nomenclature a respecter

#On met un hash avec une clé TO :
#On lui indique le controller à appeler pour aller dans le controller Restaurants
#Et appeller la methode

#racine
#reprendre le nom du controller

root to: 'restaurants#home'

resources :restaurants



#get '/restaurants', to: 'restaurants#restaurants'

#get "/restaurants", to: "restaurants#index"

#get '/restaurants', to: 'restaurants#show'

#get '/restaurants', to: 'restaurants#new'

#get '/restaurants', to: 'restaurants#restaurant'


#get '/restaurants/:id', to: 'restaurants#show'

#to fix
#
#get '/show', to: 'restaurants#show'

#get '/new', to: 'restaurants#new'
#action def INDEX vers page INDEX
#
end
