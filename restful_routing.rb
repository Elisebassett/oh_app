                  Prefix Verb   URI Pattern                      Controller#Action
     user_projects_index GET    /user_projects/index(.:format)   user_projects#index
       user_projects_new GET    /user_projects/new(.:format)     user_projects#new
    user_projects_create GET    /user_projects/create(.:format)  user_projects#create
      user_projects_show GET    /user_projects/show(.:format)    user_projects#show
      user_projects_edit GET    /user_projects/edit(.:format)    user_projects#edit
    user_projects_update GET    /user_projects/update(.:format)  user_projects#update
   user_projects_destroy GET    /user_projects/destroy(.:format) user_projects#destroy
             departments GET    /departments(.:format)           departments#index
                         POST   /departments(.:format)           departments#create
          new_department GET    /departments/new(.:format)       departments#new
         edit_department GET    /departments/:id/edit(.:format)  departments#edit
              department GET    /departments/:id(.:format)       departments#show
                         PATCH  /departments/:id(.:format)       departments#update
                         PUT    /departments/:id(.:format)       departments#update
                         DELETE /departments/:id(.:format)       departments#destroy
                projects GET    /projects(.:format)              projects#index
                         POST   /projects(.:format)              projects#create
             new_project GET    /projects/new(.:format)          projects#new
            edit_project GET    /projects/:id/edit(.:format)     projects#edit
                 project GET    /projects/:id(.:format)          projects#show
                         PATCH  /projects/:id(.:format)          projects#update
                         PUT    /projects/:id(.:format)          projects#update
                         DELETE /projects/:id(.:format)          projects#destroy
        new_user_session GET    /users/sign_in(.:format)         devise/sessions#new
            user_session POST   /users/sign_in(.:format)         devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)        devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)    devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
           user_password PATCH  /users/password(.:format)        devise/passwords#update
                         PUT    /users/password(.:format)        devise/passwords#update
                         POST   /users/password(.:format)        devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)          devise/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)         devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)            devise/registrations#edit
       user_registration PATCH  /users(.:format)                 devise/registrations#update
                         PUT    /users(.:format)                 devise/registrations#update
                         DELETE /users(.:format)                 devise/registrations#destroy
                         POST   /users(.:format)                 devise/registrations#create
                    root GET    /                                home#index
                    user GET    /users/:id(.:format)             users#show
