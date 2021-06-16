Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :languages, only: [:index, :show] do 
    resources :courses, only: [:index]
  end
  
  resources :quizzes, only: [:show, :result]

  resources :courses, only: [:show]
end
