Rails.application.routes.draw do
  # Routes for the Program_application resource:
  # CREATE
  get "/program_applications/new", :controller => "program_applications", :action => "new"
  post "/create_program_application", :controller => "program_applications", :action => "create"

  # READ
  get "/program_applications", :controller => "program_applications", :action => "index"
  get "/program_applications/:id", :controller => "program_applications", :action => "show"

  # UPDATE
  get "/program_applications/:id/edit", :controller => "program_applications", :action => "edit"
  post "/update_program_application/:id", :controller => "program_applications", :action => "update"

  # DELETE
  get "/delete_program_application/:id", :controller => "program_applications", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Scholarship_application resource:
  # CREATE
  get "/scholarship_applications/new", :controller => "scholarship_applications", :action => "new"
  post "/create_scholarship_application", :controller => "scholarship_applications", :action => "create"

  # READ
  get "/scholarship_applications", :controller => "scholarship_applications", :action => "index"
  get "/scholarship_applications/:id", :controller => "scholarship_applications", :action => "show"

  # UPDATE
  get "/scholarship_applications/:id/edit", :controller => "scholarship_applications", :action => "edit"
  post "/update_scholarship_application/:id", :controller => "scholarship_applications", :action => "update"

  # DELETE
  get "/delete_scholarship_application/:id", :controller => "scholarship_applications", :action => "destroy"
  #------------------------------

  # Routes for the Summer_program resource:
  # CREATE
  get "/summer_programs/new", :controller => "summer_programs", :action => "new"
  post "/create_summer_program", :controller => "summer_programs", :action => "create"

  # READ
  get "/summer_programs", :controller => "summer_programs", :action => "index"
  get "/summer_programs/:id", :controller => "summer_programs", :action => "show"

  # UPDATE
  get "/summer_programs/:id/edit", :controller => "summer_programs", :action => "edit"
  post "/update_summer_program/:id", :controller => "summer_programs", :action => "update"

  # DELETE
  get "/delete_summer_program/:id", :controller => "summer_programs", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
