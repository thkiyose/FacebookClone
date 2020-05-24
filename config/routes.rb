Rails.application.routes.draw do
  resources :blog
  root to: "blogs#index"
end
