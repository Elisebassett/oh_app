Rails.application.routes.draw do


  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  resources :tasks
  resources :departments
  resources :projects
  resources :users, only: [:show]
  resources :user_projects, except: [:destroy]
  resources :user_tasks

  patch '/task-complete' => 'tasks#toggle'
  # custom route for toggling task

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end