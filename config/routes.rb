Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#index'
  # Defines the root path route ("/")
  # root "articles#index"
  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#create'
end
