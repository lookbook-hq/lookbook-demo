module Elements
  class Panel < Phlex::HTML
    attr_reader :centered

    def initialize(centered: false, **attrs)
      @centered = centered
      @tag_classes = attrs[:class]
    end

    def template(&)
      div(**tag_attributes) do
        yield
      end
    end

    def tag_attributes
      {
        **classes(@tag_classes),
        data: {
          component: "panel",
          centered: centered
        }
      }
    end
  end
end
