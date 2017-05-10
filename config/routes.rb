Rails.application.routes.draw do
  get 'profiles/index'

  get 'profiles/show'

  get 'profiles/new'

  get 'profiles/create'

  get 'profiles/edit'

  get 'profiles/update'

  resources :skills, only: [:index, :new, :create, :show, :edit, :update]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
