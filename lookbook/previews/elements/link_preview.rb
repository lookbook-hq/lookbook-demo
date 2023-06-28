module Elements
  class LinkPreview < ViewComponent::Preview
    def default
      render Elements::Link.new(href: "#").with_content("Click me")
    end
    def with_arrow
      render Elements::Link.new(arrow: true, href: "#").with_content("Log in")
    end
  end
end

