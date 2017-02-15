Rails.application.routes.draw do

  root to: 'events#index'


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

  devise_for :users

  # get 'events/index'
  #
  # get 'events/new'
  #
  # get 'events/edit'
  #
  # get 'events/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  resources :items
end
