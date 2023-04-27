module Elements
  class Prose < Phlex::HTML
    def initialize(size: :base)
      @size = size
    end

    def template(&)
      div(**tag_attributes) do
        yield
      end
    end

    def tag_attributes
      {
        **classes("prose", sm?: "prose-sm", lg?: "prose-lg"),
        data: {
          component: "prose"
        }
      }
    end

    def sm? = @size == :sm

    def lg? = @size == :lg
  end
end
