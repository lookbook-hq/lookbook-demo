class Elements::ButtonComponentPreview < ViewComponent::Preview
  # 🎉 Button playgrounasdasd! 🎉
  # -----------------------
  # You can use the controls in the 'Params' section
  # to set button property values on the fly.
  #
  # @param text
  # @param theme select :theme_options
  # @param arrow [Boolean] toggle "foobar"
  def playground(text: "Click mesdasd", theme: :danger, arrow: false)
    render Elements::ButtonComponent.new(theme: theme, arrow: arrow) do
      text
    end
  end

  # @!group

  # @label First in nameds
  def foo(text: "A primary action")
    render Elements::ButtonComponent.new do
      text
    end
  end

  def bar(text: "A primary action")
    render Elements::ButtonComponent.new do
      text
    end
  end

  # @!endgroup

  # @!group Themes

  # @label Primary (default)
  # @param text
  def with_default_theme(text: "A primary action")
    render Elements::ButtonComponent.new do
      text
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

  private

  def theme_options
    Elements::ButtonComponent::THEMES
  end
end
