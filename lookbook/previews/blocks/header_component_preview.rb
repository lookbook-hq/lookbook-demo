module Blocks
  # Header Component
  # ----------------
  #
  # The header component is a **ViewComponent** component.
  #
  # @display padding 0
  # @renders Blocks::Header
  class HeaderComponentPreview < Lookbook::Preview
    def default
      render Blocks::Header.new do |header|
        header.with_nav do |nav|
          nav.with_item(href: "#") { "Item One" }
          nav.with_item(href: "#", active: true) { "Item Two" }
          nav.with_item(href: "#") { "Item Three" }
        end
      end
    end
  end
end
