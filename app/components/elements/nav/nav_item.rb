module Elements
  class NavItem < Phlex::HTML
    attr_reader :href, :active

    def initialize(href:, active: false)
      @href = href
      @active = active
    end

    def template(&)
      li(**classes("nav-item", active?: "nav-active")) do
        a(href: href, class: "nav-link", &)
      end
    end

    def active? = active
  end
end
