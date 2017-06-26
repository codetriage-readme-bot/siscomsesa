Rails.application.routes.draw do
  resources :branches
  resources :sections
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'

  resources :post_graduations
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
