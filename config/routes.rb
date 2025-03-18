Rails.application.routes.draw do
  root 'coins#index'
  get 'about', to: 'pages#about'
  resources :coins, only: [:index, :show]
end