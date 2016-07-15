Rails.application.routes.draw do

  root to: 'pages#index'

  resources :numbers

end
