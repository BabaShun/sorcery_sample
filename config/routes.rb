Rails.application.routes.draw do
  root 'users#index'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end
  resources :password_resets

  get 'login' => 'user_sessions#new'
  post 'logout' => 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
