Rails.application.routes.draw do
  resources :sessions, only:[:new,:create,:destroy]
  resources :blogs, only:[:index,:new,:create,:show,:edit,:update]
  resources :users, only: [:new,:create,:show]
  root to: "blogs#index"
end
