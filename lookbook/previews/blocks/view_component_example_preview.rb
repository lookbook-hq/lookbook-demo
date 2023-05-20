module Blocks
  # ViewComponent Example
  # ----------------
  #
  # This is a **ViewComponent** component.
  #
  # @renders Blocks::ViewComponentExample
  # @label ViewComponent Example
  class ViewComponentExamplePreview < Lookbook::Preview
    def default
      render Blocks::ViewComponentExample.new
    end
  end
end
