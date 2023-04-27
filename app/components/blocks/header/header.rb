module Blocks
  class Header < ViewComponent::Base
    renders_one :nav, ->(**kwargs, &block) do
      render Elements::Nav.new(**kwargs), &block
    end

    def tag_attributes
      {
        data: {
          component: "header"
        }
      }
    end
  end
end
