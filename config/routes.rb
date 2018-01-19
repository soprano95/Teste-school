Rails.application.routes.draw do
  resources :enrollments
  resources :filieres
  resources :levels
  resources :cycles
  resources :grades
  resources :school_years
  resources :schools
  resources :people
  resources :quartiers
  resources :communes
  resources :cercles
  resources :regions
  resources :ethnics
  resources :religions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
