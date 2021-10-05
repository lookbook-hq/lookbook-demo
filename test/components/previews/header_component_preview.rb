class HeaderComponentPreview < ViewComponent::Preview

  def standard
    render Elements::HeaderComponent.new do
      "Standard header"
    end
  end

  # @!group Sizes

  def small
    render Elements::HeaderComponent.new(size: 12) do
      "Small header"
    end
  end

  def medium
    render Elements::HeaderComponent.new(size: 16) do
      "Small header"
    end
  end

  def big
    render Elements::HeaderComponent.new(size: 24) do
      "Small header"
    end
  end

  # @!endgroup 
end
