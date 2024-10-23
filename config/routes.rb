Rails.application.routes.draw do
  root "demo#index"

  mount Lookbook::Engine, at: "/lookbook"

  resource :slow_action, only: :create
end
