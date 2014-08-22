Rails.application.routes.draw do
 
  root to: 'posts#index'

  resources :tags
  resources :posts do
  	resources :comments

  end
end

