Rails.application.routes.draw do
  
  root 'welcome#home'

  #STATIC
  get 'history' => "welcome#history", as: :history
  get 'ethos' => "welcome#ethos", as: :ethos
  get 'locations' => "welcome#locations", as: :locations

  #APPLICATIONS
  get 'applications' => "applications#index", as: :applications
  get 'applications/new' => "applications#new", as: :new_application
  get 'applications/:id' => "applications#show", as: :application
  post 'applications' => "applications#create"


end
