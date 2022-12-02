Rails.application.routes.draw do
  root "demo#index"
  get "embeds", to: "demo#embeds"

  mount Lookbook::Engine, at: "/lookbook"
end
