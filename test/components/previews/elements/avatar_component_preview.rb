
class Elements::AvatarComponentPreview < ViewComponent::Preview
  # Avatar *it's great*
  #
  # @param src [String]
  def default(src: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80")
    render Elements::AvatarComponent.new(src: src)
  end
end