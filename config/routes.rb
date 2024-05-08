Rails.application.routes.draw do
  # health status check
  get "up" => "rails/health#show", as: :rails_health_check

  # users
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  # trips
  get "/trips" => "trips#index"
  post "/trips" => "trips#create"
  get "/trips/:id" => "trips#show"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"

  # places
  get "/places" => "places#index"
  post "/places" => "places#create"
  get "/places/:id" => "places#show"
  patch "/places/:id" => "places#update"
  delete "/places/:id" => "places#destroy"

  # gemini
  post "/plan" => "gemini#index"
end

# TO DO:
# 1. Authentication Front-end: add ability to log in and out
# 2. Authentication Back-end: limit by logged in user - non-logged in users should just see a title screen
