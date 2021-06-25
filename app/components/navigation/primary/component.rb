class Navigation::Primary::Component < ViewComponent::Base
  def initialize(links: [])
    @links = links
  end
end