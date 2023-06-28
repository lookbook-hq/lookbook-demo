module Elements
  class Button < ViewComponent::Base
    def initialize(theme: :primary, href:)
      @theme = theme
      @href = href
    end
  end
end
