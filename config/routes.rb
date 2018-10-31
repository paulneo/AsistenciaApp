Rails.application.routes.draw do

  devise_for :users
  root "people#index"
  resources :people
  resources :periods
  resources :student_enrollments
  resources :events
  resources :scheduled_events
  resources :student_assistances



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
