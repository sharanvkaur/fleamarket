Rails.application.routes.draw do

  root 'items#new'

  get 'items/new'

  post 'items/create'

  get 'items/show'

  delete 'items/destroy'

  get 'events/index'

  get 'events/new'

  get 'events/edit'

  get 'events/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
end
