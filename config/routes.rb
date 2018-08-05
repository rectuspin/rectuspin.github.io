Rails.application.routes.draw do
  resources :categories
  resources :testers
  resources :posts
  resources :portofolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # For details on the DSL available with	in this file, see http://guides.rubyonrails.org/routing.html
end
