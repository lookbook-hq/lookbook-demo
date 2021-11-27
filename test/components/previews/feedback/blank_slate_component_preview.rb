class Feedback::BlankSlateComponentPreview < ViewComponent::Preview
  # Another example with multiple editable preview params.
  #
  # This example also sets uses a `@display`` tag to
  # set a max width that this component can grow to.
  #
  # @display max_width 600px
  #
  # @param icon
  # @param content textarea
  # @param title
  # @param button_text select [[No text, ~], Do this!, Next thing, Get me out of here]
  def default(icon: false, content: "Nothing here yet. Just waiting for your content!", title: "This is the title", button_text: nil)
    render Feedback::BlankSlateComponent.new(with_icon: icon) do |slate|
      slate.title { title } if title.present?
      slate.action { button_text } if button_text.present?
      content
    end
  end
end
