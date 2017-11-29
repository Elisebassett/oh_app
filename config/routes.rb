Rails.application.routes.draw do


  resources :departments
  resources :projects

  devise_for :users, controllers: {
        registration: 'users/registration'
      }
  
	root "home#index"

  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
