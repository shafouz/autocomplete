Rails.application.routes.draw do
  root "bets#index"
  resources :bets

  get "/query", to: "bets#query"
  post "/query", to: "bets#query"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
