Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts do
  	member do 
  		put "left", to: "posts#upvote"
  		put "right", to: "posts#downvote"
  	end
  	resources :comments
  end

  root 'posts#index'

end
