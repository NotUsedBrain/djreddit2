Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :communities do
    resources :posts
  end
  
  root to: 'communities#index'

end
