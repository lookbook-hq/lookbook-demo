module Sections
  class RecipeSectionComponentPreview < ViewComponent::Preview
    def default
      render Sections::RecipeSectionComponent.new
    end
  end
end
