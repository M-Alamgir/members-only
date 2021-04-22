Rails.application.routes.draw do
  get 'sessions/new'
  root 'posts#index'
  resources :posts, only: %i[new create index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
