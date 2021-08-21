
class Elements::AvatarComponentPreview < ViewComponent::Preview
  
  # @label Small
  def size_small
    render Elements::AvatarComponent.new(src: "https://placekitten.com/300/300", size: :sm)
  end

  # @label Medium (default)
  def size_medium
    render Elements::AvatarComponent.new(src: "https://placekitten.com/300/300")
  end

  # @label Large
  def size_large
    render Elements::AvatarComponent.new(src: "https://placekitten.com/300/300", size: :lg)
  end
end