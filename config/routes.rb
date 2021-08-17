Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "employer_dashboard", to: "pages#employer_dashboard", as: :employer_dashboard
  get "applicant_dashboard", to: "pages#applicant_dashboard", as: :applicant_dashboard
  resources :organisations do
    resources :jobs, only: [:new, :create]
  end
  resources :jobs, except: [:new, :create]
  resources :qualifications, except: [:show, :index]
  resources :applications, except: [:edit, :update] do
    resources :interviews, only: [:new, :create]
  end
  resources :user_qualifications, only: [:new, :create]
  resources :experiences, only: [:new, :create]
  # nest interviews here when time is right
  resources :interviews, only: [:show]
end
