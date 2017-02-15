Rails.application.routes.draw do
  root to: 'events#index'

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :events
  resources :items
  resources :users


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
