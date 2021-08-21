class Elements::ButtonComponentPreview < ViewComponent::Preview
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
end