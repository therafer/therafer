Therafer::Application.routes.draw do

  resources :pages
  resources :projects

  root 'pages#index'

end
