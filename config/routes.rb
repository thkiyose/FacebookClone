Rails.application.routes.draw do
  resources :blogs
  resources :users, only: [:new]
  root to: "blogs#index"
end
