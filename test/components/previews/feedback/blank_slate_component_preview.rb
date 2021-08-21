class Feedback::BlankSlateComponentPreview < ViewComponent::Preview

  def basic
    render Feedback::BlankSlateComponent.new do
      "Nothing here yet. Just waiting for your content!"
    end
  end 

  def with_title
    render Feedback::BlankSlateComponent.new do |slate|
      slate.title do
        "Nothing here yet"
      end
      "Why don't you add something to cheer the place up?"
    end
  end

  # Adding an action
  # ----------------
  # This example shows how an action can be added to the blank slate using the `action` slot.
  #
  # This slot renders an instance of the `Elements::Button` component, so uou can pass content and props to it in the same format as you would a button.
  def with_action
    render Feedback::BlankSlateComponent.new do |slate|
      slate.action do
        "Add something now"
      end
      "Why don't you add something to cheer the place up?"
    end
  end
 
end