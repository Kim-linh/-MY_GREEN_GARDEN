Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user_plants do
    resources :activities, only: [ :create ]
  end

  resources :plants, only: [ :index, :show ]
end
