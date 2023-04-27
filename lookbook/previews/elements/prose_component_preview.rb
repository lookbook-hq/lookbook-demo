module Elements
  # Prose Element
  # ----------------
  #
  # The prose component is a **Phlex** component.
  class ProseComponentPreview < Lookbook::Preview
    # @!group Sizes

    def small
      render Elements::Prose.new(size: :sm) do |prose|
        prose.p { prose_text }
      end
    end

    # @label Medium (default)
    def medium
      render Elements::Prose.new do |prose|
        prose.p { prose_text }
      end
    end

    def large
      render Elements::Prose.new(size: :lg) do |prose|
        prose.p { prose_text }
      end
    end

    private

    def prose_text
      "Rails is a web application development framework written in
        the Ruby programming language. It is designed to make programming
        web applications easier by making assumptions about what every developer
        needs to get started."
    end
  end
end
