Rails.application.routes.draw do
  root "demo#index"

  get "about", to: "demo#about", as: :about
  get "embeds", to: "demo#embeds", as: :embeds

  mount Lookbook::Engine, at: "/lookbook"
end
