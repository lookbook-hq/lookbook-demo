module Sections
  class PricingSectionComponentPreview < ViewComponent::Preview
    def default
      render Sections::PricingSectionComponent.new
    end
  end
end
