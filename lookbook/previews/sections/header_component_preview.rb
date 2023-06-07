module Sections
  class HeaderComponentPreview < ViewComponent::Preview
    def default
      render Sections::HeaderComponent.new
    end
  end
end

