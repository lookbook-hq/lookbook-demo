module Sections
  class HeroComponentPreview < ViewComponent::Preview
    def default
      render Sections::HeroComponent.new
    end
  end
end
