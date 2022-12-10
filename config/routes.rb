Rails.application.routes.draw do
  devise_for :users
  root "splash_screen#index"
  
  resources :categories do
    resources :expenses, only: [:new, :create, :edit, :update]
  end
  resources :users, only: [:edit, :update, :destroy]

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
