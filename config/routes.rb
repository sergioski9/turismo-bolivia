Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'prueba', to: 'pages#prueba'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places do
    resources :review_places, only: :create
  end

  resources :publications do
    get :increase_counter
  end

  resources :review_publications, only: :destroy

  resources :review_places, only: :destroy
end
