Rails.application.routes.draw do
  resources :profiles, only: [:index, :new, :create, :show, :edit, :edite] do
    resources :skills, only: [:create]
  end

  resources :skills, only: [:index, :new, :create, :show, :edit, :update]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
