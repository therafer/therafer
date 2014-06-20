Therafer::Application.routes.draw do

  resources :pages
  resources :projects
  resources :users

  root 'pages#index'

  get '/sign_in', to: 'pages#sign_in'

  post '/sign_in', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'

end
