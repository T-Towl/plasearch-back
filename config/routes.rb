Rails.application.routes.draw do
  # get 'favorites/post'
  # get 'favorites/delete'
  # get 'sessions/new'
  namespace :api do
    namespace :v1 do
      resources :shops, only: [:index, :show]
      resources :favorites, only: [:create, :destroy]
      resources :users
      resources :favorites
      resources :sessions
    end
  end
end
