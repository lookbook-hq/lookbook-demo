module Elements
  class Link < ViewComponent::Base
    def initialize(arrow: false, href:)
      @arrow = arrow
      @href = href
    end
  end
end
