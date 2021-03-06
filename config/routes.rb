Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :restaurants, only: [:index, :show, :destroy] do
    resources :reviews, only: [:create]
  end

end
