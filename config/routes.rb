Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, :controllers => { registrations: "registrations", omniauth_callbacks: "callbacks"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  resources :languages, only: [:index, :show] do 
    resources :courses, only: [:index]
    resources :language_reviews, only: [:create] 
  end
  
  resources :quizzes, only: [:show] do
    get 'result'
  end

  resources :courses, only: [:show] do
    resources :enrolments, only: %i[show new create]
    resources :course_reviews, only: [:create]
  end
  get 'dashboard',to: 'pages#dashboard'
  get 'mentors', to: 'pages#mentors'
  
  

  resources :users, only: :show do
    collection do
      get :become_mentor
      post :create_mentor
    end
    resources :tickets, only: [:new, :create, :show]
    resources :mentor_reviews, only: [:create]
  end
  
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
