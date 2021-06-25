class Users::TeamCard::ComponentPreview < ViewComponent::Preview
  def default
    render Users::TeamCard::Component.new({
      name: "Mickey Mouse",
      role: "Chief Cheese Eater",
      image: "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=8&w=1024&h=1024&q=80"
    })
  end
end