class Feedback::AlertComponentPreview < ViewComponent::Preview

  # Warning alert
  # --------------
  # Used to notify users about some potentially hard-to-undo consequences to an action.
  #
  # **Don't use this for form validation errors!** Use the form-specific messaging component instead.
  def warning
    render Feedback::AlertComponent.new(message: "This is a warning", style: :warn)
  end 

  # Success alert
  # --------------
  # Used to notify users that a successful action has taken place.
  def success
    render Feedback::AlertComponent.new(message: "That was successful", style: :success)
  end
  
end