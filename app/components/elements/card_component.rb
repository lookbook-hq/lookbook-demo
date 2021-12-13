class Elements::CardComponent < ViewComponent::Base
  renders_many :rows, "Elements::CardRowComponent"
  attr_reader :size, :data

  def initialize(size: "medium", data: nil)
    @size = size
  end

  def rows_classes
    classes = ["card-rows"]
    classes << "card-rows--#{size}"
    classes
  end

  def classes
    classes = ["bg-yellow-50 p-8 rounded-lg"]
    classes
  end
  class Elements::CardRowComponent < ViewComponent::Base
    attr_reader :data

    def initialize(data: nil)
      @data = data
    end

    def classes
      classes = ["card-row"]
      classes
    end

    def call
      content
    end
  end
end