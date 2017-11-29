Rails.application.routes.draw do


  resources :tasks
  resources :departments
  resources :projects

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: [:show]
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
