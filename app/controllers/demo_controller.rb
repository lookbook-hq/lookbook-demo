class DemoController < ApplicationController
  helper Lookbook::UiElementsHelper

  def index
    @recipes = [
      "Cooked Apple & Lavender Yak",
      "Steamed Salt & Savory Bear",
      "Broasted Basil & Clove Snapper",
      "Infused Stew of Prawns",
      "Dry-Roasted Blueberry Pizza",
      "Broasted Lime Pasta",
      "Avocado & Grapefruit Bombe",
      "Sautéed Light Ale Pasta",
      "Strawberry and Peach Cobbler",
      "Cashew Mooncake"
    ]
  end
end
