Rails.application.routes.draw do
  resources :accounts
  resources :posts
  # resources :accounts do
  #   resources :posts
  # end
end
