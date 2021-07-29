
class Users::ProfileCardComponentPreview < ViewComponent::Preview
  # Profile card
  # -----------
  # Use the default profile card component whenever you need to represent a user.
  def default
    render Users::ProfileCard::Component.new({
      name: "Bubbles Fluffball",
      email: "bubbles@catz.com",
      avatar: "https://placekitten.com/200/200"
    })
  end
end