Rails.application.routes.draw do
  get 'sessions/new'
  namespace :api do
    namespace :v1 do
      resources :shops, only: [:index, :show]
      resources :users
      resources :sessions
    end
  end
end
