class ButtonComponent < Phlex::HTML
  attr_reader :href

  def initialize(href: nil)
    @href = href
  end

  def template
    send(href ? :a : :button) do
      yield
    end
  end
end
