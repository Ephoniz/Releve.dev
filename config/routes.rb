Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :languages, only: [:index, :show] do 
    resources :courses, only: [:index] 
  end

  resources :courses, only: [:show] do
    resources :enrolments, only: %i[show new create]
  end
  get 'dashboard',to: 'pages#dashboard'

  resources :users, only: :show do
    resources :tickets, only: [:new, :create]
  end
end
