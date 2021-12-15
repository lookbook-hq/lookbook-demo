class Elements::CardComponentPreview < ViewComponent::Preview
  # @display bg_color "#409bf5"
  def default
    render(Elements::CardComponent.new) do
      "Card as content container"
    end
  end

  # @display bg_color "#409bf5"
  # @param size [Symbol] select [medium, large]
  def with_spacing(size: :medium)
    render(Elements::CardComponent.new(size: size)) do |c|
      c.row { "Row" }
      c.row { "Row" }
      c.row { "Row" }
    end
  end

  # @display bg_color "#409bf5"
  # @display max_width 800px
  def multiple_renders_failing
    render(Elements::CardComponent.new) { "Card #1" }
    render(Elements::CardComponent.new) { "Card #2" }
    render(Elements::CardComponent.new) { "Card #3" }
  end

  ### ## Question:
  ### Is it possible to pass `params` to the erb file?
  # @display bg_color "#409bf5"
  # @display max_width 800px
  def multiple_renders_working
  end
end
