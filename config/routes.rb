Rails.application.routes.draw do
  resources :grades
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'welcome#index'
  # root'home#index'
  resources :profiles
  resources :home
  resources :welcome
  resources :courses do
    resources :materials, only: [:index, :new, :create, :destroy]
  end
  resources :conversations do
    resources :messages
  end
   resources :messages
  
  resources :questions do
    resources :comments
  end
  devise_for :users, controllers: {registrations: "registrations"}
  resources :users, only: [:index,:show] 
  resources :relationships, only: [:create, :destroy]
  get '/search', to: 'users#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
