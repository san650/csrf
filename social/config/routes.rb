Rails.application.routes.draw do
  get 'posts/index'

  resources :posts, only: :create

  match 'like', to: 'likes#create', via: :all, as: :like

  root to: 'homes#show'
end
