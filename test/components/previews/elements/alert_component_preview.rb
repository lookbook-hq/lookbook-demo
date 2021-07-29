
class Elements::AlertComponentPreview < ViewComponent::Preview

  # Warning alert
  # --------------
  # This is a great thing to use to put people **off** using the app
  #
  # @param message [String]
  # @param style [Symbol] 
  
  def warn(message: "This is a warning", style: :warn)
    render Elements::AlertComponent.new(message: message, style: style)
  end 

  # @param (see #warn)
  def success(message: "That was successful!")
    render Elements::AlertComponent.new(message: message, style: :success)
  end

  private

  def message_param

  end

end