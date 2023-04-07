Rails.application.routes.draw do
  root "demo#index"
<<<<<<< HEAD
=======

  get "about", to: "demo#about", as: :about
  get "embeds", to: "demo#embeds", as: :embeds
>>>>>>> da51884c (WIP)

  mount Lookbook::Engine, at: "/lookbook"
end
