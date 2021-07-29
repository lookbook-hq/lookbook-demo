class Users::TeamCard::ComponentPreview < ViewComponent::Preview
  def default
    render Users::TeamCard::Component.new({
      name: "Inky Kat",
      role: "Chief Mouse Catcher",
      image: "https://placekitten.com/900/900"
    })
  end
end