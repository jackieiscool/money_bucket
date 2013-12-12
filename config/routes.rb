MoneyBucket::Application.routes.draw do 

  root to: 'home#index'

  resources :sessions

  get '/auth/:provider/callback', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'

end
