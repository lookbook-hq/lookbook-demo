class Elements::AvatarComponentPreview < ViewComponent::Preview
  # @label Rounded
  #
  # @display bg_color #f00
  # @param size [Symbol] select [[Small, sm], [Medium, md], [Large, lg]]]
  def default(size: :md)
    render Elements::AvatarComponent.new(src: "https://placekitten.com/300/300", size: size)
  end

  # @label Square
  #
  # @display bg_color "#f00"
  # @param (see #default)
  def format_square(size: :md)
    render Elements::AvatarComponent.new(src: "https://placekitten.com/300/300", size: size, square: true)
  end
end
