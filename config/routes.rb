Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shops
      resources :users
    end
  end
end
