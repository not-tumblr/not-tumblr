Rails.application.routes.draw do
  resources :accounts do
    resources :posts
  end
end
