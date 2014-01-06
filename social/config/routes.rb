Rails.application.routes.draw do
  get 'posts/index'

  resources :posts, only: :create

  root to: 'homes#show'
end
