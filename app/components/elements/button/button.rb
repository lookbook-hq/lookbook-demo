module Elements
  class Button < Phlex::HTML
    attr_reader :href, :theme, :type, :icon_position

    def initialize(href: nil, theme: :primary, type: nil, icon: nil, icon_position: :start)
      @href = href
      @theme = theme
      @type = type
      @icon = icon
      @icon_position = icon_position
    end

    def template(&)
      send(href ? :a : :button, **tag_attributes) do
        span(class: "button-content") do
          icon
          span(class: "button-label", &)
        end
      end
    end

    def tag_attributes
      {
        type: type,
        href: href,
        data: {
          component: "button",
          theme: theme,
          icon_position: icon_position
        }
      }
    end

    def icon
      render Elements::Icon.new(name: @icon) if @icon
    end
  end
end
