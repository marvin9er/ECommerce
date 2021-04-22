Rails.application.routes.draw do
  resources :contacts
  resources :abouts
  root to: 'pages#home'

  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"


  resources :users
  resources :armor_orders
  resources :orders
  resources :armor_categories
  resources :armors do
    collection do
      get 'search_results'
    end
  end

  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
