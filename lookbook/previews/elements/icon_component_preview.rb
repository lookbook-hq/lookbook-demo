module Elements
  # Icon Element
  # ----------------
  #
  # The icon component is a **Phlex** component.
  class IconComponentPreview < Lookbook::Preview
    # @!group Sizes

    # @param icon "Choose icon from set" select :icon_names
    def small(size: :sm, icon: :cherry)
      render Elements::Icon.new(name: icon, size: size)
    end

    # @param (see #small)
    def medium(size: :md, icon: :cherry)
      render Elements::Icon.new(name: icon, size: size)
    end

    # @param (see #small)
    def large(size: :lg, icon: :cherry)
      render Elements::Icon.new(name: icon, size: size)
    end

    private

    def icon_names
      Elements::Icon.icon_names
    end
  end
end
