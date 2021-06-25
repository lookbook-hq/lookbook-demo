
class Users::ProfileCardComponentPreview < ViewComponent::Preview
  # Profile card
  # -----------
  # Use the default profile card component whenever you need to represent a user.
  def default
    render Users::ProfileCard::Component.new({
      name: "Mickey Mouse",
      email: "mickey@mnouse.com",
      avatar: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
    })
  end
end