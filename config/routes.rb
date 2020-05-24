Rails.application.routes.draw do
  resources :blogs
  resources :users, only: [:new,:create,:show]
  root to: "blogs#index"
end
