Rails.application.routes.draw do
  resources :visitations
  resources :visitors
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :branches
  resources :sections
  resources :post_graduations

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
