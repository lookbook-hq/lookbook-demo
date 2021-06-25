class Users::TeamCard::Component < ViewComponent::Base
  def initialize(name:, role:, image:)
    @name = name
    @role = role
    @image = image
  end
end