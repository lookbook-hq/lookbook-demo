class Elements::ButtonComponentPreview < ViewComponent::Preview
  # 🎉 Button playground! 🎉
  # -----------------------
  # You can use the controls in the 'Params' section
  # to set button property values on the fly.
  #
  # @param text
  # @param theme [Symbol] select [primary, secondary, danger]
  # @param arrow
  # @param icon
  def playground(text: "Click me", theme: :danger, arrow: false, icon: false)
    render Elements::ButtonComponent.new(theme: theme, arrow: arrow, icon: icon) do
      text
    end
  end

  # @!group Themes

  # @label Primary (default)
  def with_default_theme
    render Elements::ButtonComponent.new do
      "A primary action"
    end
  end

  # @label Secondary
  def with_secondary_theme
    render Elements::ButtonComponent.new(theme: :secondary) do
      "A less important action"
    end
  end

  # @label Danger
  def with_danger_theme
    render Elements::ButtonComponent.new(theme: :danger) do
      "A dangerous action"
    end
  end

  # @!endgroup
end
