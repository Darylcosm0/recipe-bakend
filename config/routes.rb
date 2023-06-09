Rails.application.routes.draw do
  resources :allergies
  #User routes
  get "user/:id",to: "users#show"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  get "account/edit", to: "registrations#edit", as: "edit_registration"
  get '/password_resets/validate_token', to: 'password_resets#validate_token', format: :json
  post "/recipe_label", to: "recipe_labels#destroy"

  #Recipe routes
  resources :recipe_labels,except:[:destroy]
  resources :reviews
  resources :labels
  resources :recipes 
  resources :ingredients, only:[:create,:destroy]
  resources :allergies, only:[:create,:destroy,:index]
  resources :user_recipes, only:[:create,:destroy]
  post "/search", to: "recipes#search"
  get "/sort-new", to: "recipes#sort_newest"
  get "/sort-old", to: "recipes#sort_oldest"
end


