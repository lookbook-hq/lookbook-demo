module Elements
  class Icon < Phlex::HTML
    ICON_CACHE = {}

    attr_reader :name, :size

    def initialize(name:, size: :md)
      @name = name.to_s.tr("_", "-")
      @size = size
    end

    def template
      i(**tag_attributes) do
        svg
      end
    end

    def tag_attributes
      {
        data: {
          component: "icon",
          size: size
        }
      }
    end

    def svg
      ICON_CACHE[name] ||= read_svg
    end

    def read_svg
      File.read(svg_path).html_safe
    rescue
      if Rails.env.development? || Rails.env.test?
        raise InvalidIconError, "`#{name}` is not a valid icon name"
      end
    end

    def svg_path
      Rails.root.join("app/assets/icons/#{name}.svg")
    end

    def self.icon_names
      @icon_names ||= begin
        file = File.read(Rails.root.join("config/icons.json"))
        JSON.parse(file)
      end
    end
  end
end
