
class Elements::ButtonComponentPreview < ViewComponent::Preview
  def default
    render Elements::ButtonComponent.new(text: "Click me")
  end

  def long_text
    render Elements::ButtonComponent.new(text: "This is a button with some very long text")
  end
end