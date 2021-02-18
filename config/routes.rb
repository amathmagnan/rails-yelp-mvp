Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#nomenclature a respecter

#On met un hash avec une clé TO :
#On lui indique le controller à appeler

#racine
root to: 'home#home'

get '/index', to: 'restaurants#index'
get '/index/:name', to: 'restaurants#show'


#action def INDEX vers page INDEX
#
end
