Rails.application.routes.draw do
  # health status check
  get "up" => "rails/health#show", as: :rails_health_check

  # users
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  # trips
  get "/trips" => "trips#index"
  post "/trips" => "trips#create"
end
