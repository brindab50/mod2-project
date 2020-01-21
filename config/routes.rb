Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :show, :edit]
  resources :code_words
  resources :searches
 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
get 'sign up', to: 'sessions#sign_up'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
