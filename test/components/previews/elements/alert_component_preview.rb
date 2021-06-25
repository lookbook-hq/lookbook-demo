
class Elements::AlertComponentPreview < ViewComponent::Preview
  def warn
    render Elements::AlertComponent.new(message: "Something went wrong :-(", style: :warn)
  end

  def success
    render Elements::AlertComponent.new(message: "That was successful!", style: :success)
  end
end