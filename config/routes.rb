OwenTasks::Application.routes.draw do
  get "today" => "pages#index", :as => "today"
  get "new_task" => "tasks#new", :as => "new_task"

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "sign_up" => "users#new", :as => "sign_up"
  
  root :to => "users#new"

  resources :users
  resources :sessions
  resources :tasks
end
