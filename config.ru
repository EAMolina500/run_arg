# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

Rails.application.routes.draw do
  resources :runners
  resources :organizations
  resources :events
  resources :races
  resources :race_results
end  
