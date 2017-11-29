                  Prefix Verb   URI Pattern                       Controller#Action
                   tasks GET    /tasks(.:format)                  tasks#index
                         POST   /tasks(.:format)                  tasks#create
                new_task GET    /tasks/new(.:format)              tasks#new
               edit_task GET    /tasks/:id/edit(.:format)         tasks#edit
                    task GET    /tasks/:id(.:format)              tasks#show
                         PATCH  /tasks/:id(.:format)              tasks#update
                         PUT    /tasks/:id(.:format)              tasks#update
                         DELETE /tasks/:id(.:format)              tasks#destroy
           user_projects GET    /user_projects(.:format)          user_projects#index
                         POST   /user_projects(.:format)          user_projects#create
        new_user_project GET    /user_projects/new(.:format)      user_projects#new
       edit_user_project GET    /user_projects/:id/edit(.:format) user_projects#edit
            user_project GET    /user_projects/:id(.:format)      user_projects#show
                         PATCH  /user_projects/:id(.:format)      user_projects#update
                         PUT    /user_projects/:id(.:format)      user_projects#update
                         DELETE /user_projects/:id(.:format)      user_projects#destroy
             departments GET    /departments(.:format)            departments#index
                         POST   /departments(.:format)            departments#create
          new_department GET    /departments/new(.:format)        departments#new
         edit_department GET    /departments/:id/edit(.:format)   departments#edit
              department GET    /departments/:id(.:format)        departments#show
                         PATCH  /departments/:id(.:format)        departments#update
                         PUT    /departments/:id(.:format)        departments#update
                         DELETE /departments/:id(.:format)        departments#destroy
                projects GET    /projects(.:format)               projects#index
                         POST   /projects(.:format)               projects#create
             new_project GET    /projects/new(.:format)           projects#new
            edit_project GET    /projects/:id/edit(.:format)      projects#edit
                 project GET    /projects/:id(.:format)           projects#show
                         PATCH  /projects/:id(.:format)           projects#update
                         PUT    /projects/:id(.:format)           projects#update
                         DELETE /projects/:id(.:format)           projects#destroy
        new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
            user_session POST   /users/sign_in(.:format)          devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)     devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
           user_password PATCH  /users/password(.:format)         devise/passwords#update
                         PUT    /users/password(.:format)         devise/passwords#update
                         POST   /users/password(.:format)         devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)           users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)          users/registrations#new
  edit_user_registration GET    /users/edit(.:format)             users/registrations#edit
       user_registration PATCH  /users(.:format)                  users/registrations#update
                         PUT    /users(.:format)                  users/registrations#update
                         DELETE /users(.:format)                  users/registrations#destroy
                         POST   /users(.:format)                  users/registrations#create
                    user GET    /users/:id(.:format)              users#show
                    root GET    /                                 home#index
