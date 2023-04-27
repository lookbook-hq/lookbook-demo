module Elements
  # Panel Element
  # ----------------
  #
  # The panel component is a **Phlex** component.
  class PanelComponentPreview < Lookbook::Preview
    # @label Content left (default)
    def default
      render Elements::Panel.new do
        "Panel contents here"
      end
    end

    # @label Content center
    def centered
      render Elements::Panel.new(centered: true) do
        "Panel contents here"
      end
    end
  end
end
