Rails.application.routes.draw do
  root 'home#index'
  get 'tags/:tag', to: 'posts#index', as: :tag
  
  devise_for :users
  resources :posts
  match '/posts/:id/:slug' => 'posts#show', :via => [:get], :as => :slug
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
