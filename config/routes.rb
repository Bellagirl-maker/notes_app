Rails.application.routes.draw do
  get 'notes/index'
  get 'notes/show'
  get 'notes/new'
  get 'notes/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
