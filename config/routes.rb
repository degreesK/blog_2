Rails.application.routes.draw do
  get 'posts/new'    => 'posts#new'
  post 'posts'       => 'posts#create'
  get 'posts'        => 'posts#index'
  get 'posts/:id'    => 'posts#show'
  delete 'posts/:id' => 'posts#destroy'
end
