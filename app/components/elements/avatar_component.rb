class Elements::AvatarComponent < ViewComponent::Base
  def initialize(src:, size: :md, square: false)
    @src = src
    @classes = class_names({
      "rounded-lg": square,
      "rounded-full": !square,
      "h-8 w-8": size == :sm,
      "h-20 w-20": size == :md,
      "h-32 w-32": size == :lg
    })
  end
end
