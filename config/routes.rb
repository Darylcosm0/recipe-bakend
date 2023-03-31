Rails.application.routes.draw do
  #User routes
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  get "account/edit", to: "registrations#edit", as: "edit_registration"
  get '/password_resets/validate_token', to: 'password_resets#validate_token', format: :json

  #Recipe routes
  resources :recipe_labels
  resources :reviews
  resources :labels
  resources :recipes,except:[:destroy]
  resources :ingredients, only:[:create,:destroy]
  resources :allergies, only:[:create,:destroy,:index]
  resources :user_recipes, only:[:create,:destroy]
  get "/search", to: "recipes#search"
  get "/sort-new", to: "recipes#sort_newest"
  get "/sort-old", to: "recipes#sort_oldest"
  delete "/recipe_labels", to: "recipe_labels#destroy"
end
