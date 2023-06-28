module Elements
  class LogoPreview < ViewComponent::Preview
    def default
      render Elements::Logo.new
    end
  end
end

