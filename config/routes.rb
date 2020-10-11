Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  
  # get "posts/:id/edit" => "posts#edit"
  # get 'posts/new' => "posts#new"
  # post "posts/create" => "posts#create"
  
  # get 'home/top'
  get "users/:id" => "users#show"
  post "users/create" => "users#create"
  get "signup" => "users#new" 
  post "logout" => "users#logout"
  post "login" => "users#login"
  get "login" => "users#login_form"
  # get "users/:id/edit" => "users#edit"
  # post "users/:id/update" => "users#update"

end