Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
      resources :to_dos
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'

end

# resources :users, only: [:index, :show]
#   resources :to_dos, only: [:index, :show, :create, :update, :destroy]
