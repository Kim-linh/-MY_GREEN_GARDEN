Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user_plants do
    resources :activities, :waters, only: [ :create ]
  end

  get '/plants' => 'plants#index', as: 'biblio'
  get '/plants/:id' => 'plants#show', as: 'biblio/id'
end
