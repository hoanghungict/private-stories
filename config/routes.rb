Rails.application.routes.draw do
  root to: 'visitors#index'
  post 'pincode', to: 'visitors#pincode'
  resources :posts
  resources :comments
end
