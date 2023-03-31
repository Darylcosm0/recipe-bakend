Rails.application.routes.draw do
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  post "signup", to: "registrations#create"
  get "account/edit", to: "registrations#edit", as: "edit_registration"
  get '/password_resets/validate_token', to: 'password_resets#validate_token', format: :json
end
