OwenTasks::Application.routes.draw do
  get "sign_up" => "users#new", :as => "signup"

  get "today/new"
  
  root :to => "today#new"

  resources :users
end
