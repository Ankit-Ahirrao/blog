Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  
  #get '/article', action: :show, controller: 'articles'
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  #get "/search", to: "articles#index"
  resources :articles do
    resources :comments
  end
 #resources :articles, only: [:index, :show]
end
