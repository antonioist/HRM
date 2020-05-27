Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :jobs do
    resources :booking, only: [:create, :new]
  end
  resources :information

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
