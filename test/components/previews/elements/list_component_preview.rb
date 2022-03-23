# @label Simple list
class Elements::ListComponentPreview < ViewComponent::Preview
  # This example uses the `with_content` helper to set inline content.
  #
  # You can read more about it in the ViewComponent [slots documentation](https://viewcomponent.org/guide/slots.html#with_content).
  def default
    render Elements::ListComponent.new do |list|
      list.item.with_content "One"
      list.item.with_content "Two"
      list.item.with_content "Three"
    end
  end
end
