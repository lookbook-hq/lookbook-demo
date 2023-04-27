module Blocks
  class RecipeCard < ViewComponent::Base
    attr_reader :title, :description, :image

    def initialize(title:, description:, image:)
      @title = title
      @description = description
      @image = image
    end

    def tag_attributes
      {
        data: {
          component: "recipe-card"
        }
      }
    end
  end
end
