module Elements
  class ButtonPreview < ViewComponent::Preview
    def default
      render Elements::Button.new(href:"#").with_content("Click me")
    end
    def with_danger_theme
      render Elements::Button.new(theme: :danger, href:"#").with_content("DO THIS THING NOW!!!!")
    end
  end
end
