Rails.application.routes.draw do


  get 'user_projects/index'

  get 'user_projects/new'

  get 'user_projects/create'

  get 'user_projects/show'

  get 'user_projects/edit'

  get 'user_projects/update'

  get 'user_projects/destroy'

  resources :departments
  resources :projects

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: [:show]
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
