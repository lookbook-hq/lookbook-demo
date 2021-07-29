
class Elements::AvatarComponentPreview < ViewComponent::Preview
  # ### Avatar component
  #
  # A small image (usually of a cat)
  #
  # @param src [String]
  def default(src: "https://placekitten.com/300/300")
    render Elements::AvatarComponent.new(src: src)
  end
end