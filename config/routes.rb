Rails.application.routes.draw do
  resources :estagios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'estagios#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
