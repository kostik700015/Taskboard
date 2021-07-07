Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tasks do
    resources :offers
  end
  resources :taskers
  resources :clients
  resources :users
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
