class Elements::AvatarComponent < ViewComponent::Base
  def initialize(src:, size: :md)
    @src = src
    @classes = class_names({
      "h-8 w-8": size == :sm,
      "h-12 w-12": size == :md,
      "h-16 w-16": size == :lg
    })
  end
end
