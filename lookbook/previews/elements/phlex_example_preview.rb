module Elements
  # Phlex Example
  # ----------------
  #
  # This is a **Phlex** component.
  #
  # @renders Elements::PhlexExample
  class PhlexExamplePreview < Lookbook::Preview
    def default
      render Elements::PhlexExample.new
    end
  end
end
