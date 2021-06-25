class Users::ProfileCard::Component < ViewComponent::Base
  def initialize(name:, email:, avatar:)
    @name = name
    @email = email
    @avatar = avatar
  end
end
