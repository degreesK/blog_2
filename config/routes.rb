Rails.application.routes.draw do
  resources :posts
  resources :categories
  root 'welcome#index'
  
  # THE ABOVE TAKES PLACE OF THE BELOW 7 LINES
  # get 'posts/new'         => 'posts#new'
  # post 'posts'            => 'posts#create'
  # get 'posts'             => 'posts#index'
  # get 'posts/:id'         => 'posts#show'
  # delete 'posts/:id'      => 'posts#destroy'
  # get 'posts/:id/edit'    => 'posts#edit'
  # patch 'posts/:id'       => 'posts#update'
end
