module Elements
  class Nav < Phlex::HTML
    include Phlex::DeferredRender

    attr_reader :items

    def initialize
      @items = []
    end

    def template(&)
      nav(**tag_attributes) do
        ul(class: "nav-items") do
          items.each do |item|
            render(item)
          end
        end
      end
    end

    def with_item(...)
      items << NavItem.new(...)
    end

    def tag_attributes
      {
        data: {
          component: "nav"
        }
      }
    end
  end
end
