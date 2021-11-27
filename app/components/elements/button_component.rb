class Elements::ButtonComponent < ViewComponent::Base
  def initialize(theme: :default, arrow: false)
    @theme = theme
    @arrow = arrow
  end

  def theme_classes
    case @theme
    when :danger
      "bg-red-600 hover:bg-red-700 focus:ring-red-500"
    when :secondary
      "bg-gray-500 hover:bg-gray-600 focus:ring-gray-400"
    else
      "bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500"
    end
  end
end
