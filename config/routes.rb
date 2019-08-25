Rails.application.routes.draw do
  # devise_for :users
  # root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'cocktails#index'
  resources :cocktails
  resources :doses, only: %i[new, create, destroy]
end
