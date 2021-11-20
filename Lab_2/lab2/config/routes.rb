Rails.application.routes.draw do
  get "students/index"
  resources :student_references
  resources :student_classes
  resources :student_infos
  resources :students
  root "students#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
