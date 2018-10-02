Rails.application.routes.draw do
  resources :comments
  resources :user_picks
  namespace :api do
    namespace :v1 do 
      resources :picks
      resources :users, only: %i[create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
