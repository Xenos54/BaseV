ToddyCat::Application.routes.draw do
  
  # Sign in/out
  get    'login' => 'session#new', as: :login
  post   'login' => 'session#create'
  delete 'logout' => 'session#destroy', as: :logout
  # Registration
  get  'register/:code' => 'registration#new', as: :register
  post 'register/:code' => 'registration#create'
  # Password reset
  get   'reset/:code' => 'password#edit', as: :reset
  put   'reset/:code' => 'password#update'
  patch 'reset/:code' => 'password#update'
  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'
  # Report
  get 'reports' => 'reports#index'
  get 'reports/new' => 'reports#new'
  get 'reports/:id' => 'reports#show', as: :report
  get 'reports/:id/edit' => 'reports#edit', as: :edit_report
  post 'reports' => 'reports#create'
  put 'report/:id' => 'reports#update'
  patch 'reports/:id' => 'reports#update', as: :update_report  
  delete 'reports/:id' => 'reports#destroy'
  # Profile
  get 'profile'   => 'profile#profile'

  root 'site#index'

end
