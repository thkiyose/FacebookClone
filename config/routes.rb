Rails.application.routes.draw do
  resources :sessions, only:[:new,:create,:destroy]
  resources :blogs, only:[:index,:new,:create]
  resources :users, only: [:new,:create,:show]
  root to: "blogs#index"
end
