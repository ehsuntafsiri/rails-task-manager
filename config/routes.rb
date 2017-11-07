Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #1. List tasks
  get "tasks", to: "tasks#index", as: "tasks"

  #3. Add new task
  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create"

   #2. View details of task
  get "tasks/:id", to: "tasks#show", as: "task"


 #4. Edit a task (mark as completed / update title & details)
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  #5. Remove task
  delete "tasks/:id", to: "tasks#destroy"

end
