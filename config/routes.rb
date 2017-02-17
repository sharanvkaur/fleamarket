Rails.application.routes.draw do
  get 'attendances/new'

  root to: 'events#index'

  devise_for :users


  # , controllers: {
  #       sessions: 'users/sessions'
  #     }

  resources :events
  get 'items/show_by_user/:id' => 'items#show_by_user'
    get 'events/show_by_user/:id' => 'events#show_by_user'
    get 'events/:id/review' => 'events#review'

  resources :items
  resources :users

  get 'users/:id' => 'users#index'
  get 'users/:id/edit' => "users#edit"

  post '/attendances/create' => 'attendances#create'

  resources :sellers


  # get 'items/new'
  #
  # post 'items/create'
  #
  # get 'items/show'
  #
  # get 'items/:id/edit'
  #
  # patch 'items/update'
  #
  # delete 'items/destroy'

  # get 'events/index'
  #
  # get 'events/new'
  #
  # get 'events/edit'
  #
  # get 'events/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
