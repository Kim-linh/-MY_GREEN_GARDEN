Rails.application.routes.draw do
  get 'plants/index'
  get 'plants/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
