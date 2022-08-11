Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  get 'sessions/new'
  namespace :api do
    namespace :v1 do
      resources :shops, only: [:index, :show]
      resources :favorites, only: [:create, :destroy]
      resources :users do
        get :favorites, on: :collection
      end
      resources :sessions
    end
  end
end
