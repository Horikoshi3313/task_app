Rails.application.routes.draw do
  get 'users/index'
  get 'check/example'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'users/:id' => 'users#show'
  post 'users/:id/edit' => 'users#edit'
  post 'posts/:id' => 'posts#show'
  post 'posts/:id/edit' => 'posts#edit'

resources :users
end
