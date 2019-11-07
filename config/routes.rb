Rails.application.routes.draw do
  devise_for :staffs
  devise_for :customers
  get 'films/index'
  get 'films/show'
  root 'home#index'
  resources :films, only: :show
  get '/search', to: 'search#index'
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
