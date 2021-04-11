Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"
  get "bcs", to: "bcs#index"

  get "series", to: "series#index"
  get "episodes/:id", to: "series#show"
  get "bbad", to: "bbad#index"

  root to: "main#index"
end