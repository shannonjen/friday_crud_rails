Rails.application.routes.draw do
  

  # You can have the root of your site routed with "root"
  root 'home#index'
  get '/search' => 'home#search'

  get '/log-in' => 'sessions#new'
  post '/log-in' => 'sessions#create'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Resource route (maps HTTP verbs to controller actions automatically):
  # creates the following routes
  #   get 'users' => 'users#index'
  #   get 'users/:id' => 'users#show'
  #   get 'users/:id/edit' => 'users#edit'
  #   get 'users/new' => 'users#new'
  #   post 'users' => 'users#create'
  #   put 'users/:id' => 'users#update'
  #   delete 'users' => 'users#destroy'
#######################
# $ rake routes: 
#      Prefix Verb   URI Pattern               Controller#Action
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
  resources :users

 
end
