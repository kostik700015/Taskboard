Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tasks do
    resources :offers
  end
  resources :taskers
  resources :clients do
    resources :tasks
  end
 
  devise_for :users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
