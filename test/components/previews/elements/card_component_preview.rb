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
end
