Rails.application.routes.draw do
  resources :communities
  devise_for :users
  resources :posts do
    resources :likes
    resources :comments
  end
  root to: 'posts#index'
end
