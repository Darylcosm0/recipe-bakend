Rails.application.routes.draw do
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  get "account/edit", to: "registrations#edit", as: "edit_registration"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :password_resets, only: [:create, :update], format: :json
  post 'password_resets/validate_token', to: 'password_resets#validate_token', format: :json
  

end
