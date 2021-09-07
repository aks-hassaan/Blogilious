Rails.application.routes.draw do
  get 'blogs/index'
  


  devise_for :users, controllers: {sessions: "sessions"}
  get 'home/index'
  devise_for :views
  get "/users/:id", to: "users#show", as: 'student'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :blogs
  resources :favorites

  resources :blogs do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  

end
