Rails.application.routes.draw do
  get 'home/index'
  get 'race_results/index'
  get 'race_results/show'
  get 'race_results/new'
  get 'race_results/create'
  get 'race_results/edit'
  get 'race_results/update'
  get 'race_results/destroy'
  get 'races/index'
  get 'races/show'
  get 'races/new'
  get 'races/create'
  get 'races/edit'
  get 'races/update'
  get 'races/destroy'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  get 'organizations/index'
  get 'organizations/show'
  get 'organizations/new'
  get 'organizations/create'
  get 'organizations/edit'
  get 'organizations/update'
  get 'organizations/destroy'
  get 'runners/index'
  get 'runners/show'
  get 'runners/new'
  get 'runners/create'
  get 'runners/edit'
  get 'runners/update'
  get 'runners/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#index'
end
