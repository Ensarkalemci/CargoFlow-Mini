Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do

    resources :transport_modes , only: [ :index , :show ]
    resources :service_types   , only: [ :index , :show ]
    resources :shipments       , only: [ :index , :show , :create , :update , :destroy ]

    get "track/:tracking_number", to: "shipments#track"

  end


end
