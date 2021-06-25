class Navigation::Primary::ComponentPreview < ViewComponent::Preview
  # This example uses a [preview template](https://viewcomponent.org/guide/previews.html#preview-templates),
  # so the 'Source' tab will display the contents of the template file instead of the contents of the preview method.
  def default
    render_with_template(template: "navigation/primary/component_preview_default")
  end
end
