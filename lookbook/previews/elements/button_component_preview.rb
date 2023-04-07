module Elements
  class ButtonComponentPreview < Lookbook::Preview
    def basic
      render Elements::ButtonComponent.new do
        "Click me"
      end
    end
  end
end
