module Elements
  # Nav Element
  # ----------------
  #
  # The nav component is a **Phlex** component.
  #
  # @label Horizontal Nav
  class NavComponentPreview < Lookbook::Preview
    # @!group
    def default
      render Elements::Nav.new do |nav|
        nav.with_item(href: "#") { "Item one" }
        nav.with_item(href: "#") { "Item two" }
        nav.with_item(href: "#") { "Item three" }
      end
    end

    def with_active
      render Elements::Nav.new do |nav|
        nav.with_item(href: "#") { "Item one" }
        nav.with_item(href: "#", active: true) { "Active item" }
        nav.with_item(href: "#") { "Item three" }
      end
    end
  end
end
