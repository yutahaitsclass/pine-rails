Rails.application.routes.draw do
  resources :posts
  root 'pages#index'
  get 'users/new'
  get 'login' => "sessions#new"
  post "login" => "sessions#create"
  get "signin" => "users#new"
  post "signin" => "users#create"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
