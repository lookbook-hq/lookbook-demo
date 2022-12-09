Rails.application.routes.draw do
  root "demo#index"
  
  get "embeds", to: "demo#embeds", as: :embeds

  mount Lookbook::Engine, at: "/lookbook"
end
