module Elements
  # Button Element
  # ----------------
  #
  # The button component is a **Phlex** component.
  #
  # @renders Elements::Button
  class ButtonComponentPreview < Lookbook::Preview
    # @!group Types

    def button
      render Elements::Button.new do
        "Basic button"
      end
    end

    def submit
      render Elements::Button.new(type: :submit) do
        "Submit button"
      end
    end

    def link
      render Elements::Button.new(href: "#") do
        "Link button"
      end
    end

    # @!group Themes

    def primary
      render Elements::Button.new(theme: :primary) do
        "Primary button"
      end
    end

    def secondary
      render Elements::Button.new(theme: :secondary) do
        "Secondary button"
      end
    end

    # @!group Icons

    # @label Icon first (default)
    # @param icon "Choose icon from set" select {{ Elements::Icon.icon_names }}
    def icon_start(icon: :banana)
      render Elements::Button.new(icon: icon) do
        "Icon before text"
      end
    end

    # @label Icon last
    # @param (see #icon_start)
    def icon_end(icon: :banana)
      render Elements::Button.new(icon: icon, icon_position: :end) do
        "Icon after text"
      end
    end
  end
end
