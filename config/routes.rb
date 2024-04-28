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
end

# TO DO:
# 1. create routes for places
# 2. limit by logged in user - non-logged in users should just see a title screen
