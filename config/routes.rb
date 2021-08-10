Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "dashboard", to: "pages#dashboard", as: :dashboard
  resources :organisations do
    resources :jobs, only: [:new, :create]
  end
  resources :jobs, except: [:new, :create]
  resources :qualifications, except: [:show, :index]
  resources :applications, except: [:show, :edit, :update]
  # nest interviews here when time is right
end
