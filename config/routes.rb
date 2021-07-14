Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tasks do
    resources :offers do
      resources :comments
    end
  end
  resources :taskers
  resources :clients do
    resources :tasks
  end
 
  devise_for :users
  resources :users
  get 'assign_tasker', to:  'tasks#assign_tasker'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
