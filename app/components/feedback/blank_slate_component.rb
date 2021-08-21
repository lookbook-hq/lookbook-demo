class Feedback::BlankSlateComponent < ViewComponent::Base
  renders_one :action, Elements::ButtonComponent
  renders_one :title
end
