Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places do
    resources :review_places, only: :create
    resources :publications, only: [:new, :create]
  end

  resources :publications, only: [:index, :show, :edit, :update, :destroy] do
    resources :review_publications, only: :create
  end

  resources :review_publications, only: :destroy

  resources :review_places, only: :destroy
end
