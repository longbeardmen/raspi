Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "images#index"

  resources :images

  get "/raspi_photo", to: "images#raspi_photo"
end
