Rails.application.routes.draw do
  resources :portfolios
  resources :categories
  resources :testers
  resources :posts
  resources :portofolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  get 'portfolios/index'
  get 'portfolios/new'
  resources :blogs
  # For details on the DSL available with	in this file, see http://guides.rubyonrails.org/routing.html
end
