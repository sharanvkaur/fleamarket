Rails.application.routes.draw do

  root to: 'events#index'

  devise_for :users
  
  get 'events/index'

  get 'events/new'

  get 'events/edit'

  get 'events/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
end
