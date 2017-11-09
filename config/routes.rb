Rails.application.routes.draw do


  root 'home#homepage'

 
 get '/tweet', to: 'home#homepage', as: :send_tweet


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
