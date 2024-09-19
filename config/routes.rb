Rails.application.routes.draw do
  devise_for :employees ,  path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'employees/sessions',
    registrations: 'employees/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
  resources :employees do
    resources :addresses
    resources :roles
  end
  resources :daily_statuses
  resources :leaves
  resources :salaries
  resources :projects
  resources :assignments
  resources :departments
  # Defines the root path route ("/")
  # root "posts#index"
end
