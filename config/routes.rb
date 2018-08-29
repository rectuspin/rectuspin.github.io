Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  get 'different-hi', to: 'portfolios#differenthi'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  resources :categories
  resources :testers
  resources :posts
  resources :portofolios
  get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'portfolios/index'
  get 'portfolios/new'

  resources :blogs do
    member do
      get :toggle_status
    end
  end


  root to: 'pages#home'

  # For details on the DSL available with	in this file, see http://guides.rubyonrails.org/routing.html
end
